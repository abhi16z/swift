/////////////////////////////////////////////////////
// equality operator
///////////////////////////////////////////////////

// equality operator doesn't return a value like other languages like C

var a = 5;

// if right side operand is tuple then values is decomposed;

var (c, b) = (5,6);

print(c,b)
//=> outputs 5, 6

// in C if (a = 10) would be a valid code because it returns a value but in swift it will be an error because this doesn't return a value


///////////////////////////////////
// Arithmetic Operators
///////////////////////////////////

// + - % * %

// arithmetic operators don't allow overflow by default, we have to use overflow operators to use it

// + is also used for string concatenation

print("hello" + "world")
//=> helloworld

print(9%4, -9%4)
//=> 1, -1


// unary + and -

var three = 3;

print(-three)
//=> -3
// no need to multiply with -1. There should not be any space between - and the variable/constant name

// prepending + will not do anything but it will just return the value

///////////////////////////////////////////////
// Compound Operators
/////////////////////////////////////////////////

var d = 10;

d += 3 // space between operands and operator is mandat
print(d);

// compound operators do not return anuthing

// var x = d += 5
// x is ()

//////////////////////////////////////////////////////
// Comparison operators
///////////////////////////////////////////////////

// == , !=, >, < , >= , <=

// identity operators === !== test whether two object references point to same object or different object



/////////////////////////////////////////////////////
// Tuple Comparison
/////////////////////////////////////////////////////

print("/////////////////////////////")
print((1, 2) < (2, 2))
print((3, 2, 1) > (2, 10, 10000))
print((1, 12, 1) > (2, 10, 10000))


// while comparimng tuple, 1st 1st element is compared, if 1st element in both tuples are same then 2nd element is checked if both has equal then 3rd and so on.

// if any element can give result which is not equal, comparison stops there

// can be compared only if both has same type

print((2, "a") < (3, "b"))
// true, becaude t1.n has same type as t2.n


//~ print((2, "a") < ("3", "b"))
// t1.0 doesnt have same type as t2.0 hence it throws error

/////////////////////////////////////////////////////////////////////////////
// Ternary operator
//////////////////////////////////////////////////////////////////

// ? :


//////////////////////////////////////////////////
// Nil-Coalescing Operator
/////////////////////////////////

var y: Int? 
let z = 100;

print(y != nil ? y! : z);
// 100 as z

y = 100000;
print(y != nil ? y! : z);
// 100000 as y

// shorthand for this can be 

y = nil;

print(y ?? z);
// 100

y = 100000000000;
print(y ?? z);
// 100000000000

//. if value is y is not nil then value of z will never be evaluated



