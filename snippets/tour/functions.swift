// func keyword creates function
// with js: function keyword creates function


// return type is specified by -> 
// with js: return type in js is specified by =>

func greet(name: String, age: Int) {
  print("hello \(name) you are \(age) years old");
}

greet(name: "Abhishek", age: 27)

// if labels are not provided while calling a function then it will throw error

// with TS: types are capitalized in Swift like String but not in ts.
// function greet(name: string, age: number) {
//   console.log(`Hello ${name}, you are ${age} years old`);
// }

// greet("Abhishek", 27)

func add(_ a: Int, b: Int) -> Int {
  return a + b;
}

// print(add(5, 6)); // not allowed
print(add(5, b: 6));

// since a has an operator _, label can be ommited but b doesn't have that operator, hence it can'not be deleted



//////////////////////////
// returning tuple 

func tupleFunc(a: Int, b: Int) -> (one: Int, two: Int, sum: Int) {
  return (one: a, two: b, sum: a + b)
}

print(tupleFunc(a: 5, b: 6))

func experiTuple(a: Int, b: Int) -> (a: Int, b: Int, sum: Int) {
  return (a, b, sum: a + b) // just like in JavaScript
}

print(experiTuple(a: 6, b: 7));

// a+ b is not allowed. must be a + b .  space between operators is mandatory


// the return type is mandatory other wise the return type becomes void
// type of argument is also mandatory 

func hasPassed(marks: Int) -> Bool  {
  return marks > 33
}

print(hasPassed(marks: 33))


////////////////////////
/// nested functions


func add(a: Int, b: Int) {
  func prints(res: Int) {
    print(res);
  }
  let sum = a + b;
  prints(res: sum); // even one argument function requires label while passing arguments
}

add(a: 5, b: 7);

//////////////////////////
// function can return a function

// func getresult(marks: Int) -> (() -> ()) {
//   if (marks > 33) {
//     return func printPass() {
//       print("You passed")
//     }
//   }
//   return func printFail() {
//     print("you failed")
//   }
// }

// abpove:  returning a function directly from retuern statement like above doesn't work and removing keyword func from return line makes undeclared variable error




func getresult(marks: Int) -> (() -> ()) {
  func printPass() {
    print("You passed")
  }
  func printFail() {
    print("you failed")
  }
  if (marks > 33) {
    return printPass
  }
  return printFail
}

getresult(marks: 45)()
getresult(marks: 25)()



//////////////////////////////////////////////////////////////
// FUNCTIONs are first class means function can be passed around ::: JUST LIKE JavaScript

func caller(fun: () -> ()) {
  fun();
}

func funpasser(marks: Int) {
  func calleee() {
    print(marks);
  }
  caller(fun: calleee)
}

funpasser(marks: 100);

// above we passed a function callee to the function caller and caller remembered the variable marks which was defined in its upper scope, i.e, funpasser. This is closure

