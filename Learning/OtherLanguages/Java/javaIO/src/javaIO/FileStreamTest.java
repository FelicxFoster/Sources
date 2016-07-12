package javaIO;

import java.io.*;

public class FileStreamTest {
	public static void main(String[] args){
		try{
			byte bWrite[] = {1,2,3,4,5};
			OutputStream os = new FileOutputStream("test.txt");
			for( int i=0; i<bWrite.length; i++ ){
				os.write(bWrite[i]);
			}
			os.close();
			
			InputStream is = new FileInputStream("test.txt");
			int size = is.available();
			for( int i=0; i<size; i++ ){
				System.out.print( (char)is.read()+"  ");
			}
			is.close();
		}catch( IOException e ){
			System.out.println(e);
		}
	}
}
