console.log "\n11. Switch Statement"
grade = "B"
result = switch grade
  when "A" then "Excellent"
  when "B" then "Good"
  else "Needs Improvement"
console.log result


console.log "\n12. Existential Operator"
value = null
console.log value ? "Default Value"


console.log "\n13. Splats (Variable Arguments)"
sum = (numbers...) ->
  total = 0
  total += n for n in numbers
  total

console.log sum(1, 2, 3, 4, 5)


console.log "\n14. Destructuring Assignment"
[a, b, c] = [10, 20, 30]
console.log "a=#{a}, b=#{b}, c=#{c}"


console.log "\n15. While Loop"
count = 0
while count < 5
  console.log "Count: #{count}"
  count++

  