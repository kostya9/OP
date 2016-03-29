#pragma once
#include "MainHeaders.h"
#include<stdio.h>
#include<winsock2.h>
#pragma comment(lib,"ws2_32.lib") //Winsock Library
class Socket
{
private:
	SOCKET s; // NULL means something wrong
	SOCKADDR_IN sin;
public:
	Socket() {};
	Socket(int port);
	Socket(SOCKET server);
	int Bind();
	string Receive();
	int Send(string msg);
	int Listen();
	SOCKET GetSocket() // NULL means something wrong
	{
		return s;
	}


};