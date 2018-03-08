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








// Implicitly Unwrapped Optionals
