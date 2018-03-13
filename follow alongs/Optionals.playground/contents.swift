import UIKit

// We already know about constants vs variables but there is another choice always present.
var x = 7
var f: Float = 7
let dave = "Dave"
//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals
var optionalFloat: Float?
var requiredFloat: Float
print("optionalFloat = \(optionalFloat)")
//print("requireFloat = \(requiredFloat)")

optionalFloat = 5
requiredFloat = 5
print("optionalFloat = \(optionalFloat)")
print("requireFloat = \(requiredFloat)")

// Optionals with forced unwrapping
print("optionalFloat = \(optionalFloat!)")

Int("4")
Int("Dave")

var optionalThatIsNil = Int("Dave")
var optionalThatIsNotNil = Int("4")
//print("optionalThatIsNil \(optionalThatIsNil!)")
print("optionalThatIsNotNil \(optionalThatIsNotNil!)")

// Part 2.
// Views in a Playground + Optional Chaining
let b = UIButton(frame: CGRect(origin: CGPoint(x: 0, y: 0),
                               size: CGSize(width: 100, height: 100)))
//b.setTitle("Press Me!", for: UIControlState.normal)
b.setTitle("Press Me!", for: .normal)
b.backgroundColor = .red

b.titleLabel?.text
b.titleLabel!.text!
print("The title is \(b.titleLabel!.text!)")



// Optional Binding
if let valueIfNonNil = Int("10") {
    print("The value is \(valueIfNonNil)")
} else {
    print("The value is nil")
}
if let valueIfNonNil = Int("Dave") {
    print("The value is \(valueIfNonNil)")
}

//guard let valueIfNonNil = Int("10") else {
//    print("The value is nil. The gaurd fired")
//}


// Implicitly Unwrapped Optionals
//var possibleButton: UIButton? = b
var possibleButton: UIButton? = nil

var optionalVar: UIButton? = possibleButton
var implicitlyUnwrappedOptional: UIButton! = possibleButton

print("\(optionalVar?.titleLabel?.text)")
//print("\(optionalVar!.titleLabel!.text)")
print("\(implicitlyUnwrappedOptional.titleLabel!.text)")
