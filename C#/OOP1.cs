using System;
class Account {
    private double balance;
    public Account(double b) { balance = b; }
    public void Deposit(double amt) => balance += amt;
    public bool Withdraw(double amt) {
        if (amt > balance) return false;
        balance -= amt;
        return true;
    }
    public double GetBalance() => balance;
}
class Program {
    static void Main() {
        Account acc = new Account(1000);
        acc.Deposit(500);
        acc.Withdraw(200);
        Console.WriteLine("Balance = " + acc.GetBalance());
    }
}