///////////////////////////////////////
// range operators
///////////////////////////////////////

let a = 10;
let b = 15;

print(a...b)

print(a..<b)

// this is useful not here but it will be useful in for in loop

for x in a...b {
  print(x)
}
// 10
// 11
// 12
// 13
// 14
// 15

// both ranges are inclusive

for x in a..<b {
  print(x)
}
// 10
// 11
// 12
// 13
// 14

// the upper range is not included

//////////////////////////////////////////////
// one sided range
//////////////////////////////////////////////

let names = ["Anna", "Alex", "Brian", "Jack"]

print (names[1...])
//=> ["Alex", "Brian", "Jack"]
// print from 1 to the end


print(names[...2])
//=> ["Anna", "Alex", "Brian"]
// print from bergining to the seconf index


// print (names[1..<])
// wil throw error

print(names[..<2])
//=> ["Anna", "Alex"]
// dont include 2nds index

let range = ...5

print(range)
//=> PartialRangeThrough<Int>(upperBound: 5)

print(range.contains(7))
//=> false

print(range.contains(4))
//=> true
// any value lower than 5 will or equal to 5 will be true

// if lower bound is not known we can not iterate over the range
// if lower bound is known and upper is not known then we can iterate over this range but, it will be an indefinite range s we must break from the loop at some condition

let range2 = 6...

print(range2)
//=> PartialRangeFrom<Int>(lowerBound: 6)
