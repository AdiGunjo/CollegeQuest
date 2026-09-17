class Range {
  constructor(start, end, step = 1) {
    this.start = start;
    this.end = end;
    this.step = step;
  }
  [Symbol.iterator]() {
    let current = this.start;
    const end = this.end;
    const step = this.step;
    return {
      next() {
        if (current <= end) {
          const value = current;
          current += step;
          return { value, done: false };
        }
        return { value: undefined, done: true };
      }
    };
  }
}

const range = new Range(1, 10, 2);
for (const num of range) {
  console.log(num); // 1, 3, 5, 7, 9
}
console.log([...range]); // [1, 3, 5, 7, 9]