package program;
import java.io.FileWriter;
import java.io.IOException;
public class Task3 {
 public static void main(String[] args) {
	 try {
		 FileWriter myWriter=new FileWriter("C:\\Users\\TEMP\\Desktop\\Java\\java\\Txt.txt");
		 myWriter.write("Files in java might be tricky,but it is fun enough");
		 myWriter.close();
		 System.out.println("Successfully");
	 }
	 catch(IOException e){
		 System.out.println("An error occured");
		 e.printStackTrace();
	 }
 }
}