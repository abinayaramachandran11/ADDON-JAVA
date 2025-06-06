import java.util.Scanner;
import java.util.Random;
public class OTP{
    public static int OTP(){
             Random ran = new Random();
             return 1000+ran.nextInt(6000);
         }
    public static void main(String[] args){
        Scanner in=new Scanner(System.in);
        long num=in.nextLong();
        long a=1234567890;
        if(num==a){
            int otp=OTP();
    System.out.println("one time password is"+" "+ otp);
    System.out.println("verified");
    }else{
        System.out.println("invaild");
    }
}
}