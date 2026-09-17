//Flatten Array

function flattenArray(arr, depth = Infinity) {
  return depth > 0
    ? arr.reduce((acc, val) =>
        Array.isArray(val)
          ? acc.concat(flattenArray(val, depth - 1))
          : acc.concat(val), [])
    : arr.slice();
}

const nested = [1, [2, 3, [4, 5, [6, 7]]], 8];
console.log(flattenArray(nested));      
console.log(flattenArray(nested, 1));  
console.log(nested.flat(Infinity));     

//GroupBy

function groupBy(array, keyFn) {
  return array.reduce((groups, item) => {
    const key = keyFn(item);
    if (!groups[key]) groups[key] = [];
    groups[key].push(item);
    return groups;
  }, {});
}

const students = [
  { name: "Aditya", grade: "A" },
  { name: "Priya", grade: "B" },
  { name: "Raj", grade: "A" },
  { name: "Sam", grade: "C" }
];

console.log(groupBy(students, s => s.grade));

//ChunkArray

function chunkArray(arr, size) {
  const result = [];
  for (let i = 0; i < arr.length; i += size) {
    result.push(arr.slice(i, i + size));
  }
  return result;
}

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
console.log(chunkArray(numbers, 3));

console.log(chunkArray(numbers, 4));


//Unique Array of Objects

function uniqueByKey(array, key) {
  const seen = new Set();
  return array.filter(item => {
    const value = item[key];
    if (seen.has(value)) return false;
    seen.add(value);
    return true;
  });
}

const users = [
  { id: 1, name: "Aditya" },
  { id: 2, name: "Priya" },
  { id: 1, name: "Aditya Duplicate" }
];

console.log(uniqueByKey(users, "id"));
