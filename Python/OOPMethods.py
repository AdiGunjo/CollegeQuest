class Employee:
    raise_pct = 1.05

    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def apply_raise(self):
        self.salary *= self.raise_pct

    @classmethod
    def from_string(cls, emp_str):
        name, salary = emp_str.split("-")
        return cls(name, float(salary))

    @staticmethod
    def is_workday(day):
        return day not in ("Saturday", "Sunday")

e1 = Employee.from_string("Adiii-50000")
e1.apply_raise()
print(e1.name, e1.salary)
print(Employee.is_workday("Sunday"))