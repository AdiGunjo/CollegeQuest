class Flyer:
    def move(self):
        return "Flying"

class Swimmer:
    def move(self):
        return "Swimming"

class Duck(Flyer, Swimmer):
    pass

d = Duck()
print(d.move())          
print(Duck.__mro__)      
