sum = (numbers...) ->
  total = 0
  total += n for n in numbers
  total

console.log sum(1, 2, 3, 4, 5)

[a, b, c] = [10, 20, 30]
console.log "a=#{a}, b=#{b}, c=#{c}"

count = 0
while count < 5
  console.log "Count: #{count}"
  count++

numbers = [1, 2, 3, 4, 5]
result = numbers.filter((n) -> n % 2 is 0).map((n) -> n * n)
console.log result


