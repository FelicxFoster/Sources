package test;

public class FinalTest {
	private int sum;
	private final int NUMBER;
	
	public FinalTest(int x) {
		NUMBER = x;
	}
	
	public void add() {
		sum += NUMBER;
	}
	
	public String toString() {
		return String.format("sum = %d\n", sum);
	}
	
	public static void main(String[] args) {
		FinalTest ft = new FinalTest(5);
		ft.add();
		System.out.println(ft);;
	}
	
}
