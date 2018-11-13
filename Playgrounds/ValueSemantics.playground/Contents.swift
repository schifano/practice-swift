/*:
 
 # Value Semantics
 
 Example 1: We create a new object called p1. We assign p1 to p2. p1 does not have a reference to p2 so when we modify the value x on p1, it is only changed on p1. When we assigned p1 to p2 the values were copied over.
 
 Example 2: p3 is a constant. The values inside it cannot be change in spite them being defined as a var inside the struct. The variable/box that constains those values are locked.
 
 Example 3: p4 is a variable but the underlying values in the struct exist as constants and therefore cannot be changed.
 
 Example 4: Although m2 is a constant, we are able to change the underlying variables with the class because it is the same object we are modifying, or reference. We cannot assign a new object to the constant. If "make" was a "let" we would not be able to modify it either.
 */

import UIKit

struct Position {
    var x: Int
    var y: Int
}

// Ex 1
var p1 = Position(x: 1, y: 2)
var p2 = p1
p1.x = 5
print(p1.x)
print(p2.x)

// Ex 2
let p3 = Position(x: 3, y: 4)
//p3.x = 5 // compiler error

struct AnotherPosition {
    let x: Int
    let y: Int
}

// Ex 3
var p4 = AnotherPosition(x: 5, y: 6)
//p4.x = 7 // compiler error

class Machine {
    var make: String
    
    init(make: String) {
        self.make = make
    }
}

// Ex 4
let m2 = Machine(make: "Mazda")
m2.make = "Nissan"
//m2 = Machine(make: "Toyota") // compile error

// Value type example
struct S { var data: Int = -1 }
var a = S()
var b = a                        // a is copied to b
a.data = 42                        // Changes a, not b
print("\(a.data), \(b.data)")    // prints "42, -1"

// Reference type example
class C { var data: Int = -1 }
var x = C()
var y = x                        // x is copied to y
x.data = 42                        // changes the instance referred to by x (and y)
print("\(x.data), \(y.data)")    // prints "42, 42"
