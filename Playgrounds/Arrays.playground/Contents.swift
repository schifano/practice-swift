
/*:
 
 # Arrays
 
 */

import UIKit


// Ex 1
// Immutable array, compile error trying to use append
let fibs = [0, 1, 1, 2, 3, 5]
//fibs.append(6) // compile error


// Ex 2
var mutableFibs = [0, 1, 1, 2, 3, 5]
mutableFibs.append(8)
mutableFibs.append(contentsOf: [13, 21])
mutableFibs // [0, 1, 1, 2, 3, 5, 8, 13, 21]

// Ex 3 - Value Semantics, deep copy
var x = [1,2,3]
var y = x
y.append(4)
y
x

// Ex 4 - There is a constant reference to a, when a changes, so will b.
let a = NSMutableArray(array: [1,2,3])
let b: NSArray = a
a.insert(4, at: 3)
a
b

// Ex 5 - Manually create a copy upon assignment to avoid mutating a non-mutable array.
let c = NSMutableArray(array: [1,2,3])
let d = c.copy() as! NSArray
c.insert(4, at: 3)
c
d








