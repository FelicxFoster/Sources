package javaNet;

import java.net.*;
import java.io.*;

public class Server extends Thread {

	private ServerSocket serverSocket;

	public Server(int port) throws IOException {
		// TODO Auto-generated constructor stub
		serverSocket = new ServerSocket(port);
		serverSocket.setSoTimeout(100000);
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		while(true){
			try{
				System.out.println("Waiting for client on port " + serverSocket.getLocalPort() + "...");
				
				Socket server = serverSocket.accept();
				System.out.println("Just connected to " + server.getRemoteSocketAddress());
				
				DataInputStream inputStream = new DataInputStream(server.getInputStream());
				System.out.println(inputStream.readUTF());
				
				DataOutputStream outputStream = new DataOutputStream(server.getOutputStream());
				outputStream.writeUTF("Thanks for connecting to " + server.getLocalSocketAddress() + "\nGoodbye~");
				
				server.close();
				
			}catch(SocketTimeoutException s){
				System.out.println("Socket timed out!");
				break;
			}catch(IOException e){
				e.printStackTrace();
				break;
			}
		}
	}

	public static void main(String[] args){
		
		int port = Integer.parseInt(args[0]);
		
		try{
			Thread t = new Server(port);
			t.start();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
}
