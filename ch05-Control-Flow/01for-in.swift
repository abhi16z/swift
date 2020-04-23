/////////////////////////////////////////////
// over array
//////////////////////////////////////////////


let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}
// Hello, Anna!
// Hello, Alex!
// Hello, Brian!
// Hello, Jack!


/////////////////////////////////////////////
// over dictionary
//////////////////////////////////////////////

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
// spiders have 8 legs
// cats have 4 legs
// ants have 6 legs

// itteration is un-ordered

/////////////////////////////////////////////
// over range
//////////////////////////////////////////////

for value in 1..<5 {
  print(value)
}
// 1
// 2
// 3
// 4

for value in 1...5 {
  print(value)
}
// 1
// 2
// 3
// 4
// 5

var i = 0;

for _ in 1...5 {
  i += 1
}

print("i is \(i)")
// i is 5

// if we don't need the iterating value then we can ignore it by using _

///////////////////////////////////////////////////////////
// stride(from: val1, to: val2, by: val)
///////////////////////////////////////////////////////////

print(stride(from: 0, to: 100, by: 10))
// not useful

for val in stride(from: 3, to: 100, by: 10) {
  print(val)
}
// 3
// 13
// 23
// 33
// 43
// 53
// 63
// 73
// 83
// 93

for val in stride(from: 0, to: 100, by: 10) {
  print(val)
}
// 0
// 10
// 20
// 30
// 40
// 50
// 60
// 70
// 80
// 90

// to value is ignored

