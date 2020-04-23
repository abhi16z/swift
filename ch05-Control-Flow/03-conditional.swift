/////////////////////////////////////////
// if || else || else if
/////////////////////////////////////////

let temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

//////////////////////////////////////////////////////////
// switch
/////////////////////////////////////////////////////////

// default case is mandtrory
// case : {} not allowed, just add statements one below another


var marks = 32

switch marks {
  case 32:
    print("exactly 32")
    print("double of 16")
  case 22:
    print("exactly 22")
    print("double of 11")
  default:
    print("exactly no match")
    print("double of niul")
}

// no need of break after each case because switch execution is over if any case is matched

switch marks {
  case 22, 32:
    print("even")
  case 23, 33:
    print("odd")
  default:
    print("imaginary")
}

/////////////////////////////////////////////////
// interval matching
////////////////////////////////////////////////


var coun = 10

switch coun {
  case 0..<8:
    print("lower tier")
  case 8..<15:
    print("upper  tier")
  default:
    print("no tier")
}

/////////////////////////////////////////////////
// tuple matching
////////////////////////////////////////////////

var point = (0, 1)

switch point {
  case (0,0):
    print("origin")
  case (_, 0):
    print("x axis")
  case (0, _):
    print("y axis")
  case (-2...2, -2...2):
    print("inside")
  default:
    print("outside")
}

// _ is called wild character and is true for any value of that value of tuple

/////////////////////////////////////////////////
// value binding ---- let x
////////////////////////////////////////////////

