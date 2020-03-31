var n = 10;

while n > 11 {
  print ("entered the while loop anf now n is \(n)")
  n -= 100;
}

// the above block will not run even once because condotion is always false


////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////

repeat {
  print ("repeat : entered the while loop anf now n is \(n)");
  n -= 100;
} while n > 11

// output:
// repeat : entered the while loop anf now n is 10

// notes: the while condition can be moved to the bottom so that code can run at least once

// comparios with js: js has do keyword but swift has repeat

////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////
