package javaControl;

import java.util.Scanner;

public class SwitchTest {
	public  static void main(String[] args){
		
		int age;
		
		System.out.println("Enter your age:");
		Scanner io = new Scanner(System.in);
		age = io.nextInt();
		io.close();
		
		switch(age){
			case 1: 
				System.out.println("You can crawl");
				break;
			case 2:
				System.out.println("You can speak");
				break;
			case 3:
				System.out.println("You can get in trouble");
				break;
			default:
				System.out.println("You are the best");
		}
	}
}
