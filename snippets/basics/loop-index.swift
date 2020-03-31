// keeping index in loop

////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
var num = 0;

for n in 0..<4 {
  print(n);
}

// output:
// 0
// 1
// 2
// 3

// for n in 4..<2 { // can'not be done because it goes to upper bpund
//   print(n)
// }


// ..< is an operator
//  upper range is not included

for n in 0...4 {
  print(n);
}

// output 
// 0
// 1
// 2
// 3
// 4

// ... is an operator and upper range is included

// difference with js
// ... is a spread operator and js doesn't have an inherent range //operator

