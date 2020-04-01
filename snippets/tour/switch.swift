let value = 10;

switch value {
  case 1:
    print(1);
  case 5:
    print("weird")
  case let x where x > 5:
    print("let \(x) weird")
  case 10: 
    print("10")
    print("second line")
  // case 2 > 1 : // not allowed
  //   print("alright")
  // case value > 20 : // not allowed
  //   print("not right")
  default:
    print(" default")
}
