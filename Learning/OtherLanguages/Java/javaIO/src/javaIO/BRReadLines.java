package javaIO;

import java.io.*;

public class BRReadLines {
	public static void main(String[] args) throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String 	str;
		System.out.printf("Hello, %s\nEnter lines of text.\nEnter 'end' to quit.\n", args[0]);
		do{
			System.out.print(">> ");
			str = br.readLine();
			System.out.println(str.toUpperCase());
		}while( !str.equals("end") );
	}
}