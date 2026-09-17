let result = 10 + 5 * 2;   // 20, not 30 
let mod = 10 % 3;          // 1 
let power = 2 ** 4;        // 16 
console.log(result, mod, power);

console.log(5 == "5");   // true  
console.log(5 === "5");  // false 
console.log(5 !== "5");  // true

let age = 18;
let canVote = age >= 18 ? "Yes" : "No";
console.log(canVote);

const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2); // [1,2,3,4,5]

const obj1 = { a: 1 };
const obj2 = { ...obj1, b: 2 };
console.log(obj2); // { a: 1, b: 2 }