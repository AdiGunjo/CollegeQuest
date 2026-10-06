//Mock Function

function createMockFn(implementation) {
  const calls = [];
  const mock = (...args) => {
    calls.push(args);
    return implementation ? implementation(...args) : undefined;
  };
  mock.calls = calls;
  mock.calledWith = (...args) =>
    calls.some(call => JSON.stringify(call) === JSON.stringify(args));
  mock.callCount = () => calls.length;
  return mock;
}

const mockLogger = createMockFn((msg) => `Logged: ${msg}`);
mockLogger("hello");
mockLogger("world");

console.log(mockLogger.callCount());          
console.log(mockLogger.calledWith("hello"));   
console.log(mockLogger.calls);                  


//DependencyFree Test Runner

function createTestSuite() {
  const suites = [];
  let currentSuite = null;

  function describe(name, fn) {
    currentSuite = { name, tests: [] };
    suites.push(currentSuite);
    fn();
    currentSuite = null;
  }

  function it(name, fn) {
    currentSuite.tests.push({ name, fn });
  }

  function runAll() {
    suites.forEach(suite => {
      console.log(`\n${suite.name}`);
      suite.tests.forEach(({ name, fn }) => {
        try {
          fn();
          console.log(`  ✓ ${name}`);
        } catch (e) {
          console.log(`  ✗ ${name}: ${e.message}`);
        }
      });
    });
  }

  return { describe, it, runAll };
}

const { describe, it, runAll } = createTestSuite();
describe("Math operations", () => {
  it("adds numbers", () => { if (1 + 1 !== 2) throw new Error("fail"); });
  it("multiplies numbers", () => { if (2 * 3 !== 6) throw new Error("fail"); });
});
runAll();

//Branded Simulation

function createBrand(name) {
  const symbol = Symbol(name);
  return {
    wrap: (value) => ({ [symbol]: true, value }),
    isBranded: (obj) => obj && obj[symbol] === true
  };
}

const UserId = createBrand("UserId");
const ProductId = createBrand("ProductId");

function getUser(id) {
  if (!UserId.isBranded(id)) throw new TypeError("Expected UserId");
  return `User: ${id.value}`;
}

const userId = UserId.wrap(42);
console.log(getUser(userId));



//Abort Controller for Cancellable Fetch

async function fetchWithTimeout(url, timeoutMs) {
  const controller = new AbortController();
  const timeoutId = setTimeout(() => controller.abort(), timeoutMs);

  try {
    const response = await fetch(url, { signal: controller.signal });
    clearTimeout(timeoutId);
    return await response.json();
  } catch (error) {
    if (error.name === "AbortError") {
      throw new Error(`Request timed out after ${timeoutMs}ms`);
    }
    throw error;
  }
}

fetchWithTimeout("https://api.example.com/slow", 3000)
  .then(data => console.log("Got:", data))
  .catch(err => console.log("Error:", err.message));



  //Array Zip

  function zip(...arrays) {
  const minLength = Math.min(...arrays.map(arr => arr.length));
  const result = [];

  for (let i = 0; i < minLength; i++) {
    result.push(arrays.map(arr => arr[i]));
  }
  return result;
}

const names = ["Aditya", "Priya", "Raj"];
const ages = [20, 22, 21];
const cities = ["Pune", "Mumbai", "Delhi"];

console.log(zip(names, ages, cities));

