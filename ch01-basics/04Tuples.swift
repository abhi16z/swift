// multiple values in single compound values

let status = (404, "Not found")
print(status)

print(status.1)

// => Not found

//~ print(status[1])
//~=> error

//~ status.1 = "Did you find yet"

//~=> Can't mutate because tuple is let

var mutableStatus = (500, "Server Error");

mutableStatus.1 = "Error is Fixed";

print(mutableStatus)

//~ mutableStatus.0 = "301"
//~=> Not allowed to replace an Int with String

/////////////////////////////////
// Decomposing or destructuring
////////////////////////////////////


var (code, message) = mutableStatus;

print(code, ",", message)

var (newCode) = mutableStatus;

var (_, newMessage) = mutableStatus;

print(newCode, newMessage)

// we can leave out a part which we do not want to extract

print("/////////////////////////////")
var aTuple = (1, 2, 3)

//~ var (a, b) = aTuple;
// can't loeave out, if we have to leave out one then we have to use _

var (x) = aTuple

print(x)
//=> (1, 2, 3)
// the tuple is assigned to a new variable x;

print(x.1)


//////////////////////////
// Named tuple
//////////////////////////


var namedTuple = (name: "Abhishek", age: 15)

print(namedTuple.name)

var (name, age) = namedTuple

print(name, age)

var (named, aged) = namedTuple

print(named, aged)


// surprisngly we can alter the name of keys in tuple while decomposing and it will work fine

