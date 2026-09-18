function add(a, b) {
  return a + b;
}
console.log(add(3, 4)); // 7

const multiply = function (a, b) {
  return a * b;
};
console.log(multiply(3, 4)); // 12

const square = (x) => x * x;
const greet = () => console.log("Hi!");
console.log(square(5)); // 25

function greetUser(name = "Guest") {
  console.log(`Welcome, ${name}`);
}
greetUser();          
greetUser("Aditya");  

function sumAll(...numbers) {
  return numbers.reduce((total, n) => total + n, 0);
}
console.log(sumAll(1, 2, 3, 4)); // 10