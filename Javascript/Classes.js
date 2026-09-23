class Student {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }
  introduce() {
    console.log(`I'm ${this.name}, age ${this.age}`);
  }
}
const s1 = new Student("Aditya", 20);
s1.introduce();

class Person {
  constructor(name) {
    this.name = name;
  }
  greet() {
    console.log(`Hi, I'm ${this.name}`);
  }
}
class Developer extends Person {
  constructor(name, language) {
    super(name);
    this.language = language;
  }
  code() {
    console.log(`${this.name} codes in ${this.language}`);
  }
}
const dev = new Developer("Aditya", "JavaScript");
dev.greet();
dev.code();

// Getters and Setters

class Rectangle {
  constructor(width, height) {
    this.width = width;
    this.height = height;
  }
  get area() {
    return this.width * this.height;
  }
  set setWidth(value) {
    this.width = value;
  }
}
const rect = new Rectangle(4, 5);
console.log(rect.area); 
rect.setWidth = 10;
console.log(rect.area); 