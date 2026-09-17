const nums = [1, 2, 3, 4, 5];
const evens = nums.filter(n => n % 2 === 0);
console.log(evens); 


const nums2 = [1, 2, 3, 4, 5];
const evenss = nums2.filter(n => n % 2 === 0);
console.log(evenss); 


const nums3 = [4, 2, 8, 1];
nums3.sort((a, b) => a - b); 
console.log(nums3); 


const nums4 = [1, 2, 3, 4];
const sum = nums4.reduce((acc, curr) => acc + curr, 0);
console.log(sum); 


const fruits = ["apple", "banana"];
fruits.forEach((fruit, index) => {
  console.log(`${index}: ${fruit}`);
});


const users = [{ id: 1 }, { id: 2 }, { id: 3 }];
const user = users.find(u => u.id === 2);
const index = users.findIndex(u => u.id === 2);
console.log(user, index); 


const nums5 = [4, 2, 8, 1];
nums5.sort((a, b) => a - b); 
console.log(nums5); 


const nums6 = [1, 2, 3, 4];
console.log(nums6.some(n => n > 3));  
console.log(nums6.every(n => n > 0));
