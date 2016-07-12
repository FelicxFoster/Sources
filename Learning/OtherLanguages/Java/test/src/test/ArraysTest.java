package test;

public class ArraysTest {
	public static void main(String[] args) {
		int zoro[] = { 1, 1, 2, 3, 5, 8 };
		for (int i = 0; i < zoro.length; i++) {
			System.out.print(zoro[i] + "  ");
		}
		System.out.println("\n================");
		for (int x : zoro) {
			System.out.println(x);
		}
	}
}
