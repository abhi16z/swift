// assertions are checked in debug build
// preconditions are checked in both debug and production build

// in prod, assertion condiotions are not evaluated so we can make as many assertions as we want without affecting performancve in prod

// assertions and preconditions are for sanity check

let age = 17;

assert(age > 18, "minimum voting age is 18")

// the program will break here because age is invalid

// however if age was more than 18, it would have had no problem

/////////////////////////////
// Assertion failure
///////////////////////////

// if condition is already checked then we can use assertion failure

var marks = 32;

if (marks > 33 ) {
  print("you passed")
} else {
  assertionFailure(" You can't score less than 33 for next sem")
}

// the else condition will break the code execution because assertion is deliberately faied there



//////////////////////////////////////////
////////////////////////////////////////////
// Enforcing preconditions
//////////////////////////////////////////

// use preconditions where condition can be false but must definetly has to be true

let index = 10;

precondition(index >= 10, "index can not be less than 10")


/////////////////////////////
// optimization
///////////////////////////

// if complied in uncheck mode (-0unchecked), preconditions are always assumed to be true and do not halt the execution. However fatalError() will halt the execution irrespective of optimized compiling