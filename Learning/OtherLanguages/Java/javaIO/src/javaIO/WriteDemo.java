package javaIO;

import java.util.Scanner;

//write method is not used often¡£
public class WriteDemo {
	public static void main(String[] args){
		
		Scanner zoro = new  Scanner(System.in);
		System.out.println(zoro.nextLine());
		zoro.close();
		
		int b;
		b = 'A';
		System.out.write(b);
		System.out.write('\n');
	}
}
