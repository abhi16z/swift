var test = "Hello"
var test2 = "123"

print(Int(test))
//=> nil
print(Int(test2))
//=> 123
// above code outputs 123 but throws warning

var newNum = 123;
newNum = 10;

print(newNum)

//~ newNum = nil
//~=> error: nil cannot be assigned because newNum is not optional

var newOptional: Int? = 123;
newOptional = nil;

// print(newOptional)

// not it is fine becauee newOptional is an optional value and can contain nil

print("//////////////////")
var a: Int;

//~ print(a)
//~=> error: variable used before being initialized

var b: Int?
print(b)
//=> nil

// works fine because valeu is optional and complier intializes it with nil for our code


///////////////////////////////////////////////////
// Checkinh Ni values
//////////////////////////////////////////////////////


print("/////////////////////////////////////")
print(b == nil)

var c: Int? = 10;

print(c == nil)



///////////////////////////////////
// Forced unwarapping
///////////////////////////////////

print("lets see if this prints \(c)")

// when we use above code, complier throws warning that value can be null
// but when we use ! at the end of optional value, complier doesnt show the warning

print("lets see if this prints \(c!)")


////////////////////////////////////////
// Optional bindinh
///////////////////////////////////////

