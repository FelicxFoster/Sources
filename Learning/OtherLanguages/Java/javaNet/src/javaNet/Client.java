package javaNet;

import java.net.*;
import java.io.*;

public class Client {
	
	public static void main(String[] args){
		String serverName = args[0];
		int port = Integer.parseInt(args[1]);
		
		try{
			System.out.println("Connecting to " + serverName + "on port " + port);
			
			Socket client = new Socket(serverName, port);
			System.out.println("Just connected to " + client.getRemoteSocketAddress());
			
			OutputStream outToServer = client.getOutputStream();
			DataOutputStream outputStream = new DataOutputStream(outToServer);
			
			outputStream.writeUTF("Hello from " + client.getLocalSocketAddress());
			
			InputStream inputFromServer = client.getInputStream();
			DataInputStream inputStream = new DataInputStream(inputFromServer);
			System.out.println("Server says " + inputStream.readUTF());
			
			client.close();
		}catch(IOException e){
			e.printStackTrace();
		}
	}

}
