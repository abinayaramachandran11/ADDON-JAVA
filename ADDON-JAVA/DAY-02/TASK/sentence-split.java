TASK 3
Accept sentence, split into words?

package program;
import java.util.Scanner;
public class Task3 {
public static void main(String[] args) {
Scanner s=new Scanner(System.in);
System.out.println("Enter Sentence:");
String in=s.nextLine();
String[] words = in.split(" ");
       System.out.println("Words in the sentence:");
       for (String word : words) {
           System.out.println(word);
}
}}
