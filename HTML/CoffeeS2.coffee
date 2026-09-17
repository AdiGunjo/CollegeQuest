console.log "\n6. Array Comprehension"
squares = (x * x for x in [1..5])
console.log squares


console.log "\n7. Filtered Comprehension"
evens = (n for n in [1..20] when n % 2 is 0)
console.log evens


console.log "\n8. Object Literal"
student =
  name: "Aditya"
  course: "B.Tech IT"
  semester: 2
console.log student


console.log "\n9. Class Definition"
class Animal
  constructor: (@name) ->
  speak: -> "#{@name} makes a sound."

dog = new Animal("Dog")
console.log dog.speak()


console.log "\n10. Class Inheritance"
class Vehicle
  constructor: (@type) ->
  info: -> "This is a #{@type}"

class Car extends Vehicle
  constructor: -> super("Car")

console.log new Car().info()



