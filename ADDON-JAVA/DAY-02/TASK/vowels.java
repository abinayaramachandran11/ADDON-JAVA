TASK 2
  Count   vowels and consonants in a string?
  
package program;
public class PrintVowels {

public static void main(String[] args) {

 String input = "Hello World";

System.out.print("Vowels in the string: ");

		        	        
for (int i = 0; i < input.length(); i++) {
	
char ch = Character.toLowerCase(input.charAt(i));

 if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {

 System.out.print(input.charAt(i) + " ");

 }
 }
}
}
