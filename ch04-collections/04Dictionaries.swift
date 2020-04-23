/////////////////////////////////////////
// Dictionary
////////////////////////////////////////

var firstDic = [Int: String]();

var secondDic: [Int: String] = [:];

print(firstDic, secondDic, firstDic == secondDic)
// [:] [:] true. :: both are equal

firstDic[5] = "five"

print(firstDic)
// [5: "five"]

// firstDic = []
//error not possible

//////////////////////////////////////////////////////////////
// Literal || count || isEmpty || .keys || .values
/////////////////////////////////////////////////////////////


var thirdDic: [String: String] = ["Blr": "Bangalore", "DEL": "Delhi"]

print(thirdDic)

print(thirdDic.count, thirdDic.isEmpty, secondDic.isEmpty)
// 2 false true

print(thirdDic.keys)
// ["DEL", "Blr"]
// returns an array with all the keys

print(thirdDic.values)
// ["Bangalore", "Delhi"]
// returns all the values in an array form


print("//////////////////////////////////////////////////////////////")

//////////////////////////////////////////////////////////////
// updateValue(value, forKey: key)
/////////////////////////////////////////////////////////////

// updateValue returns the old value, hence it can be useful

var test = thirdDic.updateValue("Bombay", forKey: "BOM")

print(test ?? "", thirdDic)
// nil ["DEL": "Delhi", "Blr": "Bangalore", "BOM": "Bombay"]

var newTest = thirdDic.updateValue("Mumbai", forKey: "BOM")

print(newTest ?? "", thirdDic, newTest == "Bombay")
// Optional("Bombay") <> ["Blr": "Bangalore", "DEL": "Delhi", "BOM": "Mumbai"] <> true

// newTest becomes and optional value and as of now it has "Bombay"

print(thirdDic["BOM"], thirdDic["HYD"])
// Optional("Mumbai") nil

// if no value then it becomes nil. if there is a value then it become an optional value and we get warning


/////////////////////////////////////////////////
// removing a value || removeValue(forKey: key)
/////////////////////////////////////////////////


thirdDic["BOM"] = nil

print(thirdDic)
// ["Blr": "Bangalore", "DEL": "Delhi"]
// value is not assigned to nil i.e "BOM": nil but it is removed


thirdDic.removeValue(forKey: "Blr")
print(thirdDic)
// ["DEL": "Delhi"]
// value of key blr is removed

thirdDic.removeValue(forKey: "Hyd")
print(thirdDic)
// if key is not present then it has no effect

////////////////////////////////////////////////////////////////
// Iterating Over a Dictionary
/////////////////////////////////////////////////////////////////

var airports = ["KIA": "BANGALORE", "IGI": "DELHI"];

for (code, value) in airports {
  print(code, value)
}

//IGI DELHI
// KIA BANGALORE

for key in airports.keys {
  print(airports[key])
}
// Optional("BANGALORE")
// Optional("DELHI")

