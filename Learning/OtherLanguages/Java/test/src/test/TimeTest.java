package test;

public class TimeTest {
	private int hour;
	private int minute;
	private int second;

	public void setTime(int hour, int m, int s) {
		this.hour = ((hour >= 0 && hour < 24) ? hour : 0);   //kind of like the 'self' of this
		minute = ((m >= 0 && m < 60) ? m : 0);
		second = ((s >= 0 && s < 60) ? s : 0);
	}

	public String toMilitary() {
		return String.format("%02d:%02d:%02d", hour, minute, second);
	}

	public String toString() {
		return String.format("%d:%02d:%02d %s", ((hour == 0) ? 12 : hour % 12), minute, second,
				((hour < 12) ? "AM" : "PM"));
	}

	public static void main(String[] args) {
		TimeTest tt = new TimeTest();
		tt.setTime(13, 48, 35);
		System.out.println(tt.toMilitary());
		System.out.println(tt.toString());
	}
}
