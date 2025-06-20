package program;
import java.util.ArrayList;
public class Arraylist {
public static void main(String[] args) {
	ArrayList<Integer> a=new ArrayList();
	ArrayList<Object> b=new ArrayList();
	a.add(100);
	a.add(150);
	a.add(200);
	a.add(250);
	a.add(300);
	a.forEach(num->System.out.println(num*num));
	b.add("Abc Efg Igk");
	System.out.println(a);
	System.out.println(b);
}
}