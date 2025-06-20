import java.util.Scanner;

public class SimpleInterestCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the principal amount (P): ");
        double principal = scanner.nextDouble();

        System.out.print("Enter the rate of interest (R): ");
        double rate = scanner.nextDouble();

        System.out.print("Enter the time in years (T): ");
        double time = scanner.nextDouble();

        if (principal > 0 && rate > 0 && time > 0) {
            double simpleInterest = (principal * rate * time) / 100;

            System.out.printf("The simple interest is: %.2f\n", simpleInterest);
        } else {
            System.out.println("Please enter positive values for principal, rate, and time.");
        }
        scanner.close();
    }
}