package test;

public class StaticTest {
	private String firstname;
	private String lastname;
	private static int members = 0;

	public StaticTest(String fn, String ln) {
		firstname = fn;
		lastname = ln;
		members++;
		
		System.out.printf("Constructors for %s %s, there are %s members.\n", firstname, lastname, members);
	}
	
	public String getFirst() {
		return firstname;
	}
	
	public String getLast() {
		 return lastname;
	}
	
	public static int getMembers() {
		return members;
	}
	
	public static void main(String[] args) {
		StaticTest member1 = new StaticTest("Roronoa", "Zoro");
		StaticTest member2 = new StaticTest("Monkey D", "Luffy");
		StaticTest member3 = new StaticTest("Nico", "Robin");	
		
		System.out.println(StaticTest.getMembers());
	}
}
