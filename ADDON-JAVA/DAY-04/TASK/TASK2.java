package program;
import java.io.*;
public class Task2 {
     public static void main(String[] args) {
     String filename="C:\\Users\\TEMP\\Desktop\\Java\\java\\Demo.txt";
    			 try(BufferedReader br=new BufferedReader(new FileReader(filename))) {
    				 String Line;
    				 if((Line=br.readLine()) !=null) {
    					 System.out.println(Line);
    				 }
    			 }
    			 catch(Exception e) {
    				 System.out.println("File not found");
    			 }
     }
}