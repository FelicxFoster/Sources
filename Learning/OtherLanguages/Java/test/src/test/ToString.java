package test;

public class ToString {
	private int day;
	private int month;
	private int year;

	public ToString(int d, int m, int y) {
		day = d;
		month = m;
		year = y;

		System.out.printf("The constructor of this is called at: %s", this);
	}

	public String toString() {          // auto called when a object needs to be converted to a string
		return String.format("%d/%d/%d", month, day, year);
	}

	public static void main(String[] args) {
		ToString ts = new ToString(7, 4, 2016);

		System.out.println(ts.toString());
	}
}
