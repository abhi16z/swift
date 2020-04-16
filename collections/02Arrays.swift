// Array


// defining types of array is done by Array<type> but can also be done by [type]

var endex: Array<Int>;

endex = [1, 2, 3, 4];

var newEndex: [Int]

newEndex = [3, 4, 7]

print(endex, newEndex);


////////////////////////////////
// count
/////////////////////////

print(endex.count) // 4

////////////////////////////////////////
// Empty array
//////////////////////////////////////


var emptyStr1: [String] = []

// or

var emptyStr2 = [String]();

// or 

var emptyStr3 = Array<String>();

print(emptyStr1, emptyStr2, emptyStr3, emptyStr1 == emptyStr2); // [] [] [] true


print("////////////////////////////Append//////////////////////////////////////")

emptyStr1.append("A")

print(emptyStr1) // ["A"]

emptyStr1.append("B")

print(emptyStr1) // ["A", "B"]

///////////////////////////////////////////////////////////////////////
// Creating an Array with a Default Value || repeating - count
/////////////////////////////////////////////////////////////////////

print("//////////////////////////////////////////////////////////////////")

var emptyArr = Array(repeating: 10, count: 5)

print(emptyArr) // [10, 10, 10, 10, 10]

emptyArr.append(20)

print(emptyArr) // [10, 10, 10, 10, 10, 20]

// emptyArr.append("a")
//error cannot convert value of type 'String' to expected argument type 'Int'


///////////////////////////////////////////////////////
// combining 2 arrays
///////////////////////////////////////////////////////


var firstArr = Array(repeating: 10, count: 2);
var secondArr = Array(repeating: 20, count: 3);

print(firstArr + secondArr); //[10, 10, 20, 20, 20]

var thirdArr = Array(repeating: "A", count: 4);

print(thirdArr) //["A", "A", "A", "A"]

// print(firstArr + thirdArr)
//error can't combine array of two different types


// var fourthArr = [5, "a"]
//error hetrogeneous can not be inferred to type any

var fourthArr: [Any] = [5, "a"]; // now it is fine

print(firstArr)



////////////////////////////////////////////////////////////////////////////////
// Accessing and modifying || count || isEmpty || append || +=
/////////////////////////////////////////////////////////////////////////////

print("/////////////////////////////////////////////////////////////////")

var list = ["Egg", "Milk"]

print(list.count, list.isEmpty);

list.append("mango");

print(list);

list += ["orange"]

print(list);


//Accessing by indicea and range

// list ["Egg", "Milk", "mango", "orange"]


// first index is 0

print(list[1]) // "Milk"

list[2] = "Mangoes"

print(list)
 // ["Egg", "Milk", "Mangoes", "orange"]

//  list[4] = "Apples"
//error out of range

print("/////////////////////////////////////////////////////////////////")


var nums = [0, 1, 2, 3, 4, 5, 7];

// nums[5...8] = [6, 7, 8]
// error Fatal error: Array index is out of range

nums[4...6] = [6, 7, 8]
// [0, 1, 2, 3, 6, 7, 8]

print(nums)

////////////////////////////////////////////////////////////////////
// insert || remove || at 
////////////////////////////////////////////////////////////////////


var fruits = ["Mango", "Apple", "Orange"]

fruits.insert("Guava", at: 1)
// ["Mango", "Guava", "Apple", "Orange"] no replace but insert

fruits.remove(at: 2)
// ["Mango", "Guava", "Orange"]

// Array.remove returns the value which is removed and hence we can use assignment operator to assign it to any value

var mango = fruits.remove(at: 0)

print(mango, fruits, fruits.count)
// Mango <and> ["Guava", "Orange"] 2


print("/////////////////////////////////////////////////////////////////")


///////////////////////////////////////////////////////////////////////////////
// removeLast
///////////////////////////////////////////////////////////////////////

var primeNums = [1, 3, 5, 7, 11];

// 2 ways to remove the last value

primeNums.remove(at: primeNums.count - 1)

print(primeNums)
// [1, 3, 5, 7]

//another way is by using removeLast

let lastPrimeRemoved = primeNums.removeLast();

// primeNums is  [1, 3, 5, 7]
print(lastPrimeRemoved, primeNums);
// 7 <and> [1, 3, 5]

// primeNums also returns the value removed so it can be assigned to other values


//////////////////////////////////////////////////////////////////////
// Iteration || enumerated()
//////////////////////////////////////////////////////////////////////

var cities = ["Blr", "Hyd", "Del", "Mum"]

for city in cities {
  print("I live in \(city)")
}
// I live in Blr
// I live in Hyd
// I live in Del
// I live in Mum

for (index, city) in cities.enumerated() {
  print("Rank of \(city) is \(index + 1)")
}
// Rank of Blr is 1
// Rank of Hyd is 2
// Rank of Del is 3
// Rank of Mum is 4


// enumerated returns the tuple for each index and item in the array
// if we do not use enumerated then accessing (index, item) will throw error

