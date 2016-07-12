package test;

public class MultiArrays {
	public static void main(String[] args) {
		int firstarray[][] = { { 1, 3, 5, 7 }, { 2, 4, 6, 8 } };
		int secondarray[][] = { { 4, 9, 6, 11 }, { 3, 5, 8, 12 } };
		display(firstarray);
		display(secondarray);
	}

	public static void display(int x[][]) {
		for (int row = 0; row < x.length; row++) {
			for (int column = 0; column < x[row].length; column++) {
				System.out.print(x[row][column] + "\t");
			}
			System.out.println();
		}
	}
}
