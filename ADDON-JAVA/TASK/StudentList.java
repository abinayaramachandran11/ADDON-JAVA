import java.util.ArrayList;
public class StudentListExample {
    public static void main(String[] args) {
        ArrayList<String> students = new ArrayList<>();
        students.add("Abinaya");
        students.add("Sujitha");
        students.add("Vinisha");
        students.add("Pooja");
        students.add("Sahana");
        for (String student : students) {
            System.out.println(student);
        }
    }
}
