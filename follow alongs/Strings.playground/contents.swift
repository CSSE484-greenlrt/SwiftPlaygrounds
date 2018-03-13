import Foundation

// String Concatenation
var myStr = "Hello," + " World!"

// String append
myStr += "!"

// Looping over a string
for myChar in myStr {
    print(myChar)
}

// String size
myStr.count

// String Interpolation
var x = 7
var math = "\(x)^2 is \(x^2) not \(x * x) because ^ is XOR."

// Checking for equality
let dave = "Dave"
let name = "Dave"
if name == dave {
    print("They are equal")
} else {
    print("Not the same")
}


// Finding a Character within a String
if let indexFound = name.index(of: "a") {
    print("Found a at location \(indexFound.encodedOffset)")
}
// Finding a String within a String
if let rangeFound = name.range(of: "av") {
    print("Range found av from \(rangeFound.lowerBound.encodedOffset) to \(rangeFound.upperBound.encodedOffset)")
}


// Substrings
myStr.prefix(2)
myStr.suffix(6)

let startIndex = myStr.index(myStr.startIndex, offsetBy: 1)
let endIndex = myStr.index(myStr.startIndex, offsetBy: 8)
myStr[startIndex..<endIndex]
