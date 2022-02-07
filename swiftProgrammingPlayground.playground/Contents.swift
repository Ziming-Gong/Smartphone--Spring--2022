import Cocoa



var greeting =  "Hello, playground"
greeting = "Ziming"
print(greeting)


let intValue: Int = 5
let doubleVal: Double = 5.0
let str : String = "hello I am a string"
let booVal : Bool = true

var x,y,z : Int?

var optionalInt : Int?

//Fun Stuff

let 🌚 = "Watch"
print(🌚)

let name = "Ziming"

print("hello"+name)
print("hello \(name)" )

//comment in one line

/*
 
 */

print("Ziming"); print("Ziming Again")

print("Int minumum value = \(Int.min)")
print("Int Maxmum value = \(Int.max)")
print("Int Maxmum value = \(UInt64.max)")

var doubleMaxInt : Double = 9223372036854775807
doubleMaxInt = doubleMaxInt * 2
print(doubleMaxInt)

let binaryVal = 0b011
print(binaryVal)

let octalValue = 0o237
let hexaZValue = 0xE
print(octalValue)
print(hexaZValue)

let tupleValue = (404,"Not Found")
print(tupleValue.0)
print(tupleValue.1)

let (id,status) = (404,"Not Found")
print(id)
print(status)

let tripleValue = (234, "abcd", true)
print(tripleValue.0)
print(tripleValue.1)
print(tripleValue.2)

//optionals
var strName : String?

strName = "Robb"

print(strName)
print(strName!)

var intValue1 : Int?

func sampleFunctionForGuard(strName : String?){
    
    guard let name = strName else{return}
    print(name)
}

sampleFunctionForGuard(strName: intValue1)



















