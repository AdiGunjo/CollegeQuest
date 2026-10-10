class Pizza:
    def __init__(self):
        self.toppings = []
        self.size = "medium"

    def __repr__(self):
        return f"{self.size} pizza with {', '.join(self.toppings) or 'no toppings'}"

class PizzaBuilder:
    def __init__(self):
        self.pizza = Pizza()

    def set_size(self, size):
        self.pizza.size = size
        return self  # enables chaining

    def add_topping(self, topping):
        self.pizza.toppings.append(topping)
        return self

    def build(self):
        return self.pizza

pizza = (
    PizzaBuilder()
    .set_size("large")
    .add_topping("cheese")
    .add_topping("mushroom")
    .build()
)
print(pizza)