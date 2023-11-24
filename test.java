import java.util.Scanner;
public class test {

	public static void main(String[] args) {
		Scanner s = new Scanner (System.in);
		int a;
		int b;
		int c;
		
		System.out.println("Wert a");
		a = s.nextInt();
		
		System.out.println("Wert b");
		b = s.nextInt();
		
		c = a+b;
		System.out.println(a +" + "+ b + " = "+ c);
		
		return;
	}

}
