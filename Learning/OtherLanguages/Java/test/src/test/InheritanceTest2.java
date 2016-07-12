package test;

public class InheritanceTest2 extends InheritanceTest {
	
	public void eat() {
		System.out.println("I am the new eat method.");
	}
	
	public static void main(String[] args) {
		InheritanceTest it1 = new InheritanceTest();
		InheritanceTest2 it2 = new InheritanceTest2();
		it1.eat();
		it2.eat();
	}
}
