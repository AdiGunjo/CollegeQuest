//Closures

function counter() {
  let count = 0;
  return function () {
    count++;
    return count;
  };
}
const increment = counter();
console.log(increment()); 
console.log(increment()); 

//Higher-Order Functions

function operate(a, b, operation) {
  return operation(a, b);
}
const add = (x, y) => x + y;
const subtract = (x, y) => x - y;

console.log(operate(5, 3, add));      
console.log(operate(5, 3, subtract)); 

//Currying

function multiply(a) {
  return function (b) {
    return a * b;
  };
}
const double = multiply(2);
console.log(double(5)); 


//Recursion

function factorial(n) {
  if (n === 0) {
    return 1;
  }
  return n * factorial(n - 1);
}
console.log(factorial(5)); 

//Memoization

const memoizedFactorial = (function () {
  const cache = {};
  return function factorial(n) {
    if (n in cache) {
      return cache[n];
    }
    if (n === 0) {
      return 1;
    }
    const result = n * factorial(n - 1);
    cache[n] = result;
    return result;
  }
})();
console.log(memoizedFactorial(5)); 
console.log(memoizedFactorial(6));  


//Debouncing

function debounce(func, delay) {
  let timer;
  return function (...args) {
    clearTimeout(timer);
    timer = setTimeout(() => func(...args), delay);
  };
}
const log = debounce(() => console.log("Search triggered"), 500);
log(); log(); log();

//Throttling

function throttle(func, limit) {
  let lastFunc;
  let lastRan;
  return function (...args) {
    if (!lastRan) {
      func(...args);
      lastRan = Date.now();
    } else {
      clearTimeout(lastFunc);
      lastFunc = setTimeout(() => {
        if ((Date.now() - lastRan) >= limit) {
          func(...args);
          lastRan = Date.now();
        } 
      }, limit - (Date.now() - lastRan)); 
    }
  };
} 

