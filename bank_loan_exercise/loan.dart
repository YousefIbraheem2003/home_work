/*
Abstract Class: Loan
Create an abstract class Loan with the following properties and methods:
- borrowerName (String)
- loanAmount (double)
- interestRate (double)
- Abstract method: double calculateMonthlyInstallment(int months).
Loan Subclasses
Three types of loans should be implemented:
- PersonalLoan: Has a fixed 10% interest rate.
- HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
- CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee.
LoanProcessingSystem Class
Create a LoanProcessingSystem class that:
- Stores a list of loans.
- Provides methods to:
- applyLoan(Loan loan): Adds a loan application to the system.
- calculateInstallments(int months): Calculates the monthly installment for all loans.
*/
abstract class Loan {
  final String borrowerName;
  final double loanAmount;
  double interestRate;

  Loan(
      {required this.borrowerName,
      required this.loanAmount,
      required this.interestRate});

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: 0.10);

  @override
  double calculateMonthlyInstallment(int months) {
    double totalAmount = loanAmount + (loanAmount * interestRate);
    return totalAmount / months;
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: loanAmount > 500000 ? 0.095 : 0.08);

  @override
  double calculateMonthlyInstallment(int months) {
    double totalAmount = loanAmount + (loanAmount * interestRate);
    return totalAmount / months;
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
      : super(
            borrowerName: borrowerName,
            loanAmount: loanAmount,
            interestRate: 0.07);

  @override
  double calculateMonthlyInstallment(int months) {
    double totalAmount = loanAmount + (loanAmount * interestRate);

    if (loanAmount > 50000) {
      totalAmount += loanAmount * 0.02;
    }

    return totalAmount / months;
  }
}

class LoanProcessingSystem {
  final List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
    print('Loan applied for ${loan.borrowerName}');
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
          'Borrower: ${loan.borrowerName}, Monthly Installment: ${installment.toStringAsFixed(2)}');
    }
  }
}

void main() {
  LoanProcessingSystem system = LoanProcessingSystem();

  system.applyLoan(PersonalLoan('yousef', 10000));
  system.applyLoan(HomeLoan('ibrahem', 600000));
  system.applyLoan(CarLoan('george', 55000));

  print('Installments for 12 months:');
  system.calculateInstallments(12);
}
