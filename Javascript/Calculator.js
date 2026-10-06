class Calculator {
  constructor() {
    this.stack = [];
  }
  push(value) {
    this.stack.push(value);
    return this;
  }
  operate(operator) {
    const b = this.stack.pop();
    const a = this.stack.pop();
    let result;
    switch (operator) {
      case "+": result = a + b; break;
      case "-": result = a - b; break;
      case "*": result = a * b; break;
      case "/": result = a / b; break;
      default: throw new Error("Unknown operator");
    }
    this.stack.push(result);
    return this;
  }
  result() {
    return this.stack[this.stack.length - 1];
  }
}

const calc = new Calculator();
const answer = calc.push(5).push(3).operate("+").push(2).operate("*").result();
console.log(answer); // (5+3)*2 = 16