console.log "\n16. Chained Method Calls"
numbers = [1, 2, 3, 4, 5]
result16 = numbers.filter((n) -> n % 2 is 0).map((n) -> n * n)
console.log result16


console.log "\n17. String Manipulation"
sentence = "coffeescript is fun"
capitalized = sentence.split(" ").map((w) -> w[0].toUpperCase() + w[1..]).join(" ")
console.log capitalized


console.log "\n18. Try/Catch Error Handling"
try
  throw new Error("Something went wrong")
catch error
  console.log "Caught: #{error.message}"


console.log "\n19. Closures"
makeCounter = ->
  count = 0
  -> count += 1

counter = makeCounter()
console.log counter()
console.log counter()


console.log "\n20. Multiple Return Values (via array)"
divide = (a, b) -> [Math.floor(a / b), a % b]
[quotient, remainder] = divide(17, 5)
console.log "Quotient: #{quotient}, Remainder: #{remainder}"

