print("Hello Sets")

// Sets have no order, Arrays have order
// Sets have only unique items, array can have repeating items

var firstSet = Set<Int>();

print(firstSet) // []

firstSet.insert(2)

print(firstSet) // [2]

firstSet = []

print(firstSet) // []

/////////////////////
// from Arrays
/////////////////////////


var arr = [1, 2, 3];

// firstSet = arr; 
//error cannot assign value of type '[Int]' to type 'Set<Int>'

var secondSet: Set<Int> = [1, 2, 3]

print(secondSet) // allowed

var thirdSet: Set<Int>;

thirdSet = [3, 4, 5]

print(thirdSet) // allowed

var fourthSet: Set = [1, 2, 3]

print(fourthSet)

// fourthSet = ["a", "b"]
//error type error

// var fifthSet: Set = [1, "a"]
//error Any type is not hashable

// var fifthSet: Set<Any>
//error Any type is not hashable


///////////////////////////////////////////////////////////
// count || isEmpty || insert || remove || contains
//////////////////////////////////////////////////////////

var fruitSet: Set = ["mango", "orange", "apple"]

print(fruitSet.count, fruitSet.isEmpty)
// 3

fruitSet.insert("Guava")

print(fruitSet)

fruitSet.insert("Guava")
// duplicate item is ignored

fruitSet.remove("Guava")

print(fruitSet)

print(fruitSet.contains("orange"))


////////////////////////////////////////////////////////////
// Iterating || sorted
///////////////////////////////////////////////////////////////


for fruits in fruitSet {
  print(fruits)
}

for fruits in fruitSet.sorted() {
  print(fruits)
}

print(fruitSet.sorted())

//////////////////////////////////////////////////////////////
// Fundamental Set Operations
//////////////////////////////////////////////////////////////

print("//////////////////////////////////////////////////////////////")

/////////////////////////////////////////////////////////////////////
// intersection || symmetricDifference || union || subtracting
///////////////////////////////////////////////////////////////////

var age: Set = [1, 3];

var nums: Set = [1, 3];

print(age == nums)

// true

var animals: Set = ["lion", "tiger", "dog", "cat", "goat", "wolf"];

var pets: Set = ["dog", "cat", "goat", "parrot", "Hen"];

var canine: Set = ["tiger", "goat"]

var birds: Set = ["parrot", "Hen", "Falcon"]

print(animals.intersection(pets));
// ["cat", "goat", "dog"]

print(animals.union(pets))
// ["lion", "wolf", "cat", "goat", "parrot", "dog", "Hen", "tiger"]

print(animals.symmetricDifference(pets))
// ["tiger", "wolf", "Hen", "parrot", "lion"]

print(animals.subtracting(pets))
// ["lion", "tiger", "wolf"]

///////////////////////////////(////////////////////////////////////
// isSubset(of: ) || isSuperset(of: ) || isDisjoint(with: )
///////////////////////////////////////////////////////////////////

print(pets.isSubset(of: animals))
// false because of pet birds

print(canine.isSubset(of: animals))
// true

print(animals.isSuperset(of: animals))
// true

print(canine.isSubset(of: canine))
// true

print(canine.isDisjoint(with: birds))
// true
