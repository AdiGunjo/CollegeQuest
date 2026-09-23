from dataclasses import dataclass, field
from typing import List

@dataclass
class Student:
    name: str
    roll_no: int
    marks: List[int] = field(default_factory=list)

    def average(self) -> float:
        return sum(self.marks) / len(self.marks) if self.marks else 0.0

s1 = Student("Adiii", 21, [88, 92, 79])
s2 = Student("Adiii", 21, [88, 92, 79])

print(s1)
print(f"Average: {s1.average():.2f}")
print(s1 == s2)   

 