package Program;
import java.util.HashMap;
public class StudentMarks{
    public static void main(String[] args){
        HashMap<String,Integer>StudentMarks=new HashMap<>();
        StudentMarks.put("Abinaya",100);
        StudentMarks.put("Mani",75);
        StudentMarks.put("Riyana",80);
        int totalMarks=0;
        for(int marks:StudentMarks.values()){
            totalMarks +=marks;}
            System.out.println("Total Marks: " + totalMarks);
    }
}