// tuple

let t = (5, 6, 7);

print(t.1);

// output 6

// if we Access t[0] or t[1] etc then it will throw error

// t.3 = 8. // can't assign at 3 position because there is no position 3

// t.2 = 9 error because tuple is constant

// however if tuple was declared with var thenb it would be possible

var tvar = (5, 6, 7);

tvar.2 = 100
print(tvar);
// output (5, 6, 100)

// named tuples

let tn = (a: 5, b: 6, c: 7);

// let tan = ("a": 5, "b": 6, "c": 7);
//  above is not allowed ironically in named array, names has to be double quoted

print(tn)
print(tn.a)

// print(tn.x)  
// above statement is not "undefined" or nil but is an error



