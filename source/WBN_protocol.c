#include "WBN_protocol.h"
#include "SMAC_Config.h"

#define PACKET_HISTORY_LEN 5
#define NOT_SET (-1)

#define FALSE 0
#define TRUE !FALSE


static txPacket_t* smacPacket;
static uint8_t deviceId;

static uint8_t receive_packet_no = 0;

static int history[PACKET_HISTORY_LEN];
static int history_pos = 0;

void initWBN(txPacket_t* appTxPacket, uint8_t myDeviceId) {
	smacPacket = appTxPacket;
	deviceId = myDeviceId;
	
	for(int i = 0; i < PACKET_HISTORY_LEN; i++)
	{
		history[i] = NOT_SET;
	}
} 

int check_value(int number)
{
	for(int i = 0; i < PACKET_HISTORY_LEN; i++)
	{
		if(history[i] != NOT_SET &&
			history[i] == number)
		{
			return FALSE;
		}
	}
	
	history_pos += 1;
	if(history_pos >= PACKET_HISTORY_LEN)
	{
		history_pos = 0;
	}
	
	history[history_pos] = number;
	
	return TRUE;
}

void sendViaWBN(Packet packet) {
	smacErrors_t err = gErrorNoError_c;
	static uint8_t* pPacketPdu;

	pPacketPdu = gAppTxPacket->smacPdu.smacPdu;

	FLib_MemSet(gAppTxPacket->smacPdu.smacPdu, 0, gMaxSmacSDULength_c);
	
	pPacketPdu[0]=packet->sourceID;
	pPacketPdu[0]=packet->destinationID;
	pPacketPdu[0]=packet->packetID;
	pPacketPdu[0]=packet->timeToLive;
	pPacketPdu[0]=packet->payload;

	gAppTxPacket->u8DataLength = 5;

	err = MCPSDataRequest(gAppTxPacket);
	if(err == gErrorNoError_c); // do something
}

static uint8_t nos[10][2];

/* Codes:
	0+ Some useful action code
	-1 Acknowledgement
	-2 Take no action (eg not meant for me) */
int8_t receiveViaWBN(Packet packet){
	
	// Is the packet for me?
	if(packet->destinationID == deviceId){
		
		// Is the packet an acknowledgement?
		if ((packet->packetID & 0b10000000)){
			return -1;
		}
		else
		{
			uint8_t packet_no = packet->packetID & 0b01111111;
			
			uint8_t new = check_packet(packet_no);
			
			check_value(packet_no);
			
			if (new){
				//Replying
				Packet ack;
				ack.sourceID = deviceId;
				ack.destinationID = packet->sourceID;
				ack.packetID = packet->packetID;
				ack.timeTolive = 5;
				ack.payload = 0;
				
				sendViaWBN(ack);
			}
			
			return packet->payload;
		}
		
	} else {
		// Forwarding the packet
		if (packet->timeToLive > 0){
			packet->timeToLive--;
			sendViaWBN(packet);
		}
		
		return -2;
	}
		
}