package test;

public class ConstructorsTest {
	private int hour;
	private int minute;
	private int second;

	public ConstructorsTest() {        //Overload constructors depend on the arguments
		setTime(0, 0, 0); 
	}

	public ConstructorsTest(int h) {
		setTime(h, 0, 0);
	}

	public ConstructorsTest(int h, int m) {
		setTime(h, m, 0);
	}
	
	public ConstructorsTest(int h, int m, int s) {
		setTime(h, m, s);
	}
	
	public void setTime(int h, int m, int s) {
		hour = h;
		minute = m;
		second = s;
	}
		
	public String toMilitary() {
		return String.format("%02d:%02d:%02d", hour, minute, second);
	}

	public static void main(String[] args) {
		ConstructorsTest ct1 = new ConstructorsTest();
		ConstructorsTest ct2 = new ConstructorsTest(13);
		ConstructorsTest ct3 = new ConstructorsTest(13, 14);
		ConstructorsTest ct4 = new ConstructorsTest(13, 14, 13);

		System.out.println(ct1.toMilitary());
		System.out.println(ct2.toMilitary());
		System.out.println(ct3.toMilitary());
		System.out.println(ct4.toMilitary());

	}
}
