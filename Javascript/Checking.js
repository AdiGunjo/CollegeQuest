//Debounce

function debounce(func, delay) {
  let timeoutId;
  return function (...args) {
    const context = this;
    clearTimeout(timeoutId);
    timeoutId = setTimeout(() => {
      func.apply(context, args);
    }, delay);
  };
}

function searchAPI(query) {
  console.log(`Searching for: ${query}`);
}

const debouncedSearch = debounce(searchAPI, 400);
debouncedSearch("h");
debouncedSearch("he");
debouncedSearch("hel");
debouncedSearch("hello"); 

//Throttle

function throttle(func, limit) {
  let inThrottle = false;
  return function (...args) {
    const context = this;
    if (!inThrottle) {
      func.apply(context, args);
      inThrottle = true;
      setTimeout(() => {
        inThrottle = false;
      }, limit);
    }
  };
}

function onScroll() {
  console.log("Scroll event handled at", Date.now());
}

const throttledScroll = throttle(onScroll, 1000);

throttledScroll();
throttledScroll();
throttledScroll(); 

//Memoization

function memoize(fn) {
  const cache = {};
  return function (...args) {
    const key = JSON.stringify(args);
    if (cache[key] !== undefined) return cache[key];
    const result = fn.apply(this, args);
    cache[key] = result;
    return result;
  }
}

function add(a, b) {
  console.log(`Calculating ${a} + ${b}`);
  return a + b;
}

const memoizedAdd = memoize(add);
memoizedAdd(2, 3); 
memoizedAdd(2, 3);


//PromiseAll

function promiseAllCustom(promises) {
  return new Promise((resolve, reject) => {
    const results = [];
    let completed = 0;

    if (promises.length === 0) resolve([]);

    promises.forEach((promise, index) => {
      Promise.resolve(promise)
        .then(value => {
          results[index] = value;
          completed++;
          if (completed === promises.length) {
            resolve(results);
          }
        })
        .catch(reject);
    }     
  });
}

const p1 = Promise.resolve(1);
const p2 = new Promise(res => setTimeout(() => res(2), 100));
const p3 = Promise.resolve(3);

promiseAllCustom([p1, p2, p3]).then(console.log); // [1, 2, 3]