sentence = "coffeescript is fun"
capitalized = sentence.split(" ").map((w) -> w[0].toUpperCase() + w[1..]).join(" ")
console.log capitalized

try
  throw new Error("Something went wrong")
catch error
  console.log "Caught: #{error.message}"

makeCounter = ->
  count = 0
  -> count += 1

counter = makeCounter()
console.log counter()
console.log counter()

divide = (a, b) -> [Math.floor(a / b), a % b]
[quotient, remainder] = divide(17, 5)
console.log "Quotient: #{quotient}, Remainder: #{remainder}"