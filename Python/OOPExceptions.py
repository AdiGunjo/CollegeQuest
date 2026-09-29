class InsufficientFundsError(Exception):
    def __init__(self, balance, amount):
        super().__init__(f"Cannot withdraw {amount}: balance is only {balance}")
        self.balance = balance
        self.amount = amount
 
 
class NegativeAmountError(Exception):
    pass
 
 
class Wallet:
    def __init__(self, balance=0):
        self.balance = balance
 
    def withdraw(self, amount):
        if amount < 0:
            raise NegativeAmountError("Withdrawal amount cannot be negative")
        if amount > self.balance:
            raise InsufficientFundsError(self.balance, amount)
        self.balance -= amount
        return self.balance
 
 
w = Wallet(500)
for amt in [100, 1000, -50]:
    try:
        print(f"New balance after withdrawing {amt}: {w.withdraw(amt)}")
    except (InsufficientFundsError, NegativeAmountError) as e:
        print(f"Error: {e}")
