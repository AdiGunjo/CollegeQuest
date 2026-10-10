class Engine:
    def start(self):
        return "Engine started"

class GPS:
    def navigate(self, destination):
        return f"Navigating to {destination}"

class Car:
    def __init__(self):
        self.engine = Engine()      # Car HAS-A Engine
        self.gps = GPS()            # Car HAS-A GPS

    def drive_to(self, destination):
        print(self.engine.start())
        print(self.gps.navigate(destination))

car = Car()
car.drive_to("Pune Station")