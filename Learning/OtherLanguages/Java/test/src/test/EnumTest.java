package test;

import java.util.EnumSet;

public class EnumTest {
	public enum zoro {
		bucky("nice", "22"), kelsey("cuite", "10"), julia("bigmistake", "12"), nicole("italian",
				"13"), candy("different", "14"), erin("iwish", "15");

		private final String desc;
		private final String year;

		zoro(String description, String birthday) {
			desc = description;
			year = birthday;
		}

		public String getDesc() {
			return desc;
		}

		public String getYear() {
			return year;
		}
	}

	public static void main(String[] args) {
		for (zoro people : zoro.values()) {
			System.out.printf("%s\t%-8s\t%s\n", people, people.getDesc(), people.getYear());
		}

		System.out.println("\nAnd now for the range of constants!!!\n");
	
		for (zoro people : EnumSet.range(zoro.kelsey, zoro.candy)) {
			System.out.printf("%s\t%-8s\t%s\n", people, people.getDesc(), people.getYear());
		}
	}
}
