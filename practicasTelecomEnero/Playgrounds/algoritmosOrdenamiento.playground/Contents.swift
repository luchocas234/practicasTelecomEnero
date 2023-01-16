import UIKit

// Algoritmos para Colecciones (Ordenación)

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

// - Sort (Ordenación)

print(myArray)
myArray.sort()
print(myArray)

//Se puede darle un ordenamiento personalizado
myArray.sort { (intA, intB) -> Bool in
    return intA > intB
}
print(myArray)

//el Sort no se puede aplicar en Dictionary o Sets,

// se puede aplicar Sorted para Dictionary o Set

// - Sorted (Ordenación)

print(myArray)
var myArraySorted = myArray.sorted()
print(myArray)
print(myArraySorted)

myArraySorted = myArray.sorted { (intA, intB) -> Bool in
    return intA > intB
}
print(myArraySorted)

let mySortedDictionary = myDictionary.sorted { (elementA, elementB) -> Bool in
    return elementA.key < elementB.key
}
print(mySortedDictionary)

var mySortedSet = mySet.sorted()
print(mySortedSet)

mySortedSet = mySet.sorted { (intA, intB) -> Bool in
    return intA > intB
}
print(mySortedSet)

// .--- Filter nos permite mutar nuestro array y que nos devuelva solo las que cumplen dicha condicion

let myFilteredArray = myArray.filter { (myInt) -> Bool in
    return myInt % 2 == 0
}
print(myFilteredArray)

let myFilteredDictionary = myDictionary.filter { (myKey, myValue) -> Bool in
    return myKey % 2 == 0
}
print(myFilteredDictionary)

let myFilteredSet = mySet.filter { (myInt) -> Bool in
    return myInt % 2 == 0
}
print(myFilteredSet)

// Map, hace una accion por aca elemento del array o Dictionary..

let myMapArray = myArray.map { (myInt) -> Int in
    return myInt + 10
}
print(myMapArray)

let myStringMapArray = myArray.map { (myInt) -> String in
    return "Este es el número \(myInt)"
}
print(myStringMapArray)

let myIntMapArray = myDictionary.map { (myElement) -> Int in
    return myElement.key
}
print(myIntMapArray)

let myStringMapArray2 =  mySet.map { (myInt) -> String in
    return "\(myInt)"
}
print(myStringMapArray2)

// El map retorna un Generico, podemos elegir que queremos que retorne.

// ForEach itera el array

myArray.forEach { (myInt) in
    print(myInt)
}

print("")

myDictionary.forEach { (myElement) in
    print(myElement.key)
}

print("")

mySet.forEach { (myInt) in
    print(myInt)
}

// De esta forma puedo recorrer un array o dictionary de manera más sencilla.


var myArray2 = [5,8,1,0,3,9,7,2,4,6]

var myDictionary2 = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

var mySet2: Set = [5,8,1,0,3,9,7,2,4,6]
// - Count

print(myArray2.count)
print(myDictionary2.count)
print(mySet2.count)

// - isEmpty

print(myArray2.isEmpty)
print(myDictionary2.isEmpty)
print(mySet2.isEmpty)

// - reversed

print(myArray2.reversed() as [Int])
print(myDictionary2.reversed())
print(mySet2.reversed())

// - first o last

print(myArray2.popLast())
print(myDictionary2.popFirst())
print(mySet2.popFirst())
