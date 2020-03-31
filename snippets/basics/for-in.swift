var a = [1, 2, 3];

for num in a {
  print(num)
}

// output 
// 1
// 2
// 3



var b = ["x": 1, "y": 2, "z": 3]; // x: 1 would be error

for (key, val) in b {
  print(key, val)
}
// output
// x 1
// y 2
// z 3



for (key) in b {
  print(key)
}
// output
// (key: "x", value: 1)
// (key: "y", value: 2)
// (key: "z", value: 3)



// for (key, ) in b {
//   print(key)
// }

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

for (type, numArray) in interestingNumbers {
  for num in numArray {
    print(type, num)
  }
}

// output 
// Fibonacci 1
// Fibonacci 1
// Fibonacci 2
// Fibonacci 3
// Fibonacci 5
// Fibonacci 8
// Square 1
// Square 4
// Square 9
// Square 16
// Square 25
// Prime 2
// Prime 3
// Prime 5
// Prime 7
// Prime 11
// Prime 13