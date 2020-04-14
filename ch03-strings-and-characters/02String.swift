var empty = ""

print(empty.isEmpty);

// str.count gives the count of the string. javascript has length


let sparklingHeart = "\u{1F496}";
print(sparklingHeart.count) // 1

print(#"\u{1F496}"#)

// # makes it to print \u{1F496} literally


// Cha5acters

var cha: Character = "c";

var chas: String = "c";

// print (cha + "at")
//=> not possible because character has max length of one


print (chas + "at")


////////////////////////////////////////////////////////////////////////////////////////
// indices || startIndex || endIndex || index() || before: || after: || offsetBy
//////////////////////////////////////////////////////////////////////////////////////////


print ("/???/////////////////////////////////////////////")
var ab = "Abhishek"

print(ab[ab.startIndex]); // A

// print(ab[ab.endIndex - 1]); not possible

// index() returns an index

print(ab[ab.index(after: ab.startIndex)]);

// after: ab.startIndex returns an rawbit which is converted to index by String.index()

print(ab[ab.index(before: ab.endIndex)]) // k

print(ab[ab.index(ab.startIndex, offsetBy: 3)]) // i 0+3 = 3 (4th element)

/////////////////////////////////////////////////////////
// indices
//////////////////////////////////////////////


for index in ab.indices {
  print(ab[index], index) // index is the memory location?
}

print("'/////////////////////////////////////////'")

for char in "character" {
  print(char)
}

//////////////////////////////////////////////////////////////////
// insert and remove || at: || contentsOf || 
///////////////////////////////////////////////////////////////////

print("'/////////////////////////////////////////'")


// var c11 = contentsOf: " hello" not allowed

var welcome = "hello"

welcome.insert("!", at: welcome.endIndex) // hello!

welcome.insert("X", at: welcome.startIndex) // Xhello!

// welcome.insert("QQ", at: welcome.index(before: welcome.lastIndex))  // not allowed, first arg must be a character


welcome.insert("Q", at: welcome.index(before: welcome.endIndex)) // XhelloQ!


// insert doesn't replace but it inserts the value at mentioned index



welcome.insert(contentsOf: " There", at: welcome.endIndex)

// XhelloQ! There


print(welcome) 
print("'/////////////////////////////////////////'")


// remove

// single character at:

///////////////////////////////////////////////////////////
// remove || at || removeSubrange
/////////////////////////////////////////////////////////////

welcome.remove(at: welcome.startIndex) // // helloQ! There



let random = "xxxxxxxx"

welcome.insert(contentsOf: random, at: welcome.index(welcome.startIndex, offsetBy: 2))


// removing random

let range = welcome.index(welcome.startIndex, offsetBy: 2)..<welcome.index(welcome.startIndex, offsetBy: 10)

welcome.removeSubrange(range)

welcome.remove(at: welcome.index(welcome.startIndex, offsetBy: 5))
print(welcome);
