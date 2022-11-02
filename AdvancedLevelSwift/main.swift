//
//  main.swift
//  AdvancedLevelSwift
//
//  Created by Berkay on 22.10.2022.
//

import Foundation

var berki = MusicianStruct(name: "berkay", age: 24, instrument: "guitar") // if we define with var
print(berki.instrument)

let sude = MusicianClass(nameInput: "fatmaSude", ageInput: 22, instrumentInput: "piano")
print(sude.instrument)

// immutuablity

berki.age = 25 // cannot assign to property: 'berki' is a let constant....
sude.age = 23

print(berki.age) // struct goes both way, mutable and immutable
print(sude.age) // always mutable, doesnt matter you define it with let or var

// References Heap vs Value Type

// Its simply, when you want to a copy of object in class structures, you create a references that indicates same object. Which mean 2 References goes to 1 object, which is when one of them is changed, also the other one has changed. To illustrate;

// Class - Sude

let copyOfSudeClass = sude
copyOfSudeClass.age = 18
print(copyOfSudeClass.age)
print(sude.age) // as you can see, we changed age of copyOfSude but the age of original sude has also changed.

// But There is no such things like in Struct Forms. Because they are value type.

// Struct - Berki

var copyOfBerkiStruct = berki
copyOfBerkiStruct.age = 15

print(copyOfBerkiStruct.age)
print(berki.age) // its still 25

// To Sum Up

// References Type -> Class
// Copy -> Same object new references : 1 Object + 2 Reference

// Values Type -> Struct
// Copy -> New Object : Diffirent Object : 2 Object

//--------------------------------------

// Tuples

let myTuple = (2,7,22)
print(myTuple.1)
var myTupleee = ("berkay",24)
print(myTupleee)
print(myTupleee.0)
myTupleee.1 = 18
print(myTupleee.1)

var myLastTuple = (0, [1,2,3])

print(myLastTuple.1[1])

// Guard Let vs If Let

// Guard Let -> You can think its negative and protective.
// If Let -> You can think its positive, if you can, do this. if you cant no problem , else...

/*
var myNumberr = "5"

func guardNumberConverter() -> Int {
    guard let myGuardNumber = Int() else {
        return 0
    }
        return myGuardNumber
}

func ifNumberConverter (_stringInput: String) -> Int {
    if let myIfNumber = Int(_stringInput) {
        return myIfNumber
    } else {
        return 0
    }
}


guardNumberConverter(myNumberr)
guardNumberConverter(5)
ifNumberConverter(_stringInput: "Berki")
ifNumberConverter(_stringInput: "237529")
 
*/

// Switch Case

// defining the Remainder ( % )

let myRemainder = 17 % 6
print(myRemainder)

if myRemainder == 5 {
    print("Its 5")
} else if myRemainder == 4 {
    print("Its 4")
} else if myRemainder == 3 {
    print("Its 3")
}
// that is one way.

switch myRemainder {
case 1...3:
    print("Its between 1-3")
case 4...6:
    print("Its between 4-6")
default:
    print("unknown")
}
