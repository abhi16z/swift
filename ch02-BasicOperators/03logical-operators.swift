//////////////////////////////////////
// logical operators
//////////////////////////////////////

// && AND

var a = true;
var b = true;
var c = false;

print(a && b) // true
// print(a AND b) // error
print(a && c) // false
print(a && b && c) // false


// short-circuit evaluation in play in both && and ||

print(a || b)
print(b || c)
print(c || b)

// || and && are left-associative, i.e, leftmost expression is evaluated first

// usinng multiple && and || is allowed anf even parenthesis can be used to improve understandability

