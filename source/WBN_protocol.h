#ifndef WBN_procotol_H_
#define WBN_procotol_H_


struct Packet {
   int sourceID;
   int destinationID;
   int packetID;
   int timeToLive;
   int payload;
};  

void sendViaWBN(Packet packet);

void receiveViaWBN(Packet packet);


#endif /* WBN_procotol_H_ */