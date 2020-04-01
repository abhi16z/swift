var name: String;

var a: Int, b: String;

var c, d : Int

name = "Ab"
a = 5;
b = "ABH"
c = 6;
d = 7;

print(name, a, b, c, d)

// Typesafety is strictly followed by swift

let con = 100;

// con is constant now and cannot be assigned a new value here

//////////////////////////////////////////
// printing
////////////////////////////////////////

print("Hello")
print("There")

print("Hello"); print("There")

// to print them in same line, we can 

print("hello", terminator: " ")
print("There")
// by default, terminator is a new line character

//////////////////////////
// values in stribg
//////////////////////////////
let fruits = 100

print("I have \(fruits) fruits")

/////////////////////
// semicolons are only manadatory when it has to separate two statements in the same line, otherwise it is optional
//////////////////////

print("helo") // is okay
print("Hello"); // is also okay
print("Hello"); print("there") // manadatory

