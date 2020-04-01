///////////////////////////////
//////////////////////////////
// Converting Int to Float
///////////////////////////////

// conversion between Int and Float must be explicit

var aInt: Int = 20

var aFloat: Float = 10.33;

//~ print(aInt + aFloat) error
// but thisd will not be an error

print(3 + 3.55) // by default, literals do not have type

print(aInt + Int(aFloat))
//=> 30

print(Float(aInt))

print(aFloat + Float(aInt))



////////////////////////////////////////////
// Type Aliases
///////////////////////////////////////////

// Alternative name for an existing type
// useful when we want to give meanings to types for a particular context

typealias Age = Int8;

var myAge : Age = 15;

print(myAge)
print(Age.max)


//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
// Boolean
//////////////////////////////////////////////////////

// true and false

// automatic type conversions are not allowed


var hasError = true;

if hasError {
  print("yes, it has error")
}

// in other languages, non zero value is treated as true and 0 as false,
// In swift it will give an errir

let hasPassed = 1;

//~~ if hasPassed {
//   print("has passed")
// }

//~=> Int is not convertible to Bool



