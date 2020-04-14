///////////////////////////////////////
// substrings \\ of
////////////////////////////////////////////

var greetings = "Hello, There!";

print("//////////////////////////////////")
print(greetings.firstIndex(of: ",") ?? "null")

// ?? is avoid warning because "," might not be available in string and we might get nil. also it supresses nil/optional warning

// print(greetings.firstIndex(of: "x")) // nil


// print(greetings.firstIndex(of: "He"))
//error: because the argument should be a character


var subIndex = greetings.firstIndex(of: ",") ?? greetings.endIndex;

var subStrinResult = greetings[..<subIndex]

var subToString = String(subStrinResult);

// subStriungs are temporary because they reuse the memory spaces of string or other existing strings. so if any of the string is modified, that might affect the substring. But when it is converted to string, it gets its own memory space

print("//////////////////////////////////")



//////////////////////////////////////////////////////////
// comparison ==
////////////////////////////////////////////////


let first = "This is my string";

let second = "This is my string";

let third = "This is my";

print(first == second) // true
print(first == third) // false

// strings or character with special characters with same meaning are equal. 

//////////////////////////////////////////////////////////////////////////////////////////
/// Prefix and Suffix Equality || hasPrefix || hasSuffix
//////////////////////////////////////////////////////////////////////////////////////////

let name = "Abhi shek Kumar Sin gh"

print("has prefix ", name.hasPrefix("Abhi")) // true

print(name.hasPrefix("Ab")) // true

print(name.hasPrefix("Abhi shek Kumar Sin gh")) // true


print(name.hasSuffix("Abhi shek Kumar Sin gh")) // true

print(name.hasSuffix("gh")) // true

print(name.hasSuffix("in gh")) // true

print(name.hasSuffix("ghr")) // false


// hasPrefix and hasSuffix match character by character




