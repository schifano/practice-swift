//: Playground - noun: a place where people can play

import UIKit

/*
 13. Roman to Integer
 
 Given a roman numeral, convert it to an integer.
 Input is guaranteed to be within the range from 1 to 3999.
*/
func romanToInt(_ s: String) -> Int {
    
    // uppercase string to match dictionary
    let input = s.uppercased()
    // create dictionary of roman numeral values
    let romanValue: [Character: Int] = ["I": 1,
                                        "V": 5,
                                        "X": 10,
                                        "L": 50,
                                        "C": 100,
                                        "D": 500,
                                        "M": 1000]
    
    var previousIntegerValue = 0
    var integerValue = 0
    
    // reverse iterate through string
    for char in input.characters.reversed() {
//        print(char) // TEST
        if let currentIntegerValue = romanValue[char] {
//            print(currentIntegerValue) // TEST
            if currentIntegerValue < previousIntegerValue {
                integerValue -= currentIntegerValue
                previousIntegerValue = currentIntegerValue
            } else {
                integerValue += currentIntegerValue
                previousIntegerValue = currentIntegerValue
            }
//            print(integerValue) //  TEST
        } else {
            print("There is no current integer value")
        }
    }
    return integerValue
}


print(romanToInt("CDDIV"))
print(romanToInt("CDDIVddDD"))