/////////////////////////
// Optional binding
//////////////////////////

var optValue: Int? = 10;

if let newValue = optValue {
  print("value is available and is \(newValue)")
}

var anotherOpt: Int?

if var newValue = anotherOpt {
  print("value is available and is \(newValue)")
} else {
  print("value is not available")
}

// newvalue is available only in if block if if block passes, it is not available in else block

// Multiple binding can be used in if block

print("//////////////////////////////")
var a : Int?;
var b: Int? = 10;
var c: Int? = 12;

if let x = a, let y = b, let z = c {
  print(" we are inside")
}
// fails because a doesnt have any value



var d : Int? = 5;
var e: Int? = 10;
var f: Int? = 12;

if let x = d, let y = d, let z = f {
  print(" we are inside")
}

// thsi time all passed

if let x = d, let y = d, let z = f, 4 > 5 {
  print(" we are inside gaain")
}

// fails

if let x = d, let y = d, let z = f, 5 > 4 , 3 > 2{
  print(" we are inside gaiana again")
}


// implicitly unwrapped optionals

// putting ! at the end of the variable when it is evident from program flow that variable is going to have a value 

///////////!! incompolete -- revisit