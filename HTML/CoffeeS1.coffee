console.log "\n1. Variables & String Interpolation"
name = "Aditya"
age = 20
greeting = "Hello, #{name}! You are #{age} years old."
console.log greeting


console.log "\n2. Basic Function"
square = (x) -> x * x
console.log square(5)


console.log "\n3. Default Parameters"
greet = (name = "Guest") -> "Welcome, #{name}"
console.log greet()
console.log greet("Sam")


console.log "\n4. Conditional (if/unless)"
temp = 30
console.log "Hot day" if temp > 25
console.log "Not too cold" unless temp < 10


console.log "\n5. For Loop over Range"
for i in [1..5]
  console.log "Number: #{i}"


