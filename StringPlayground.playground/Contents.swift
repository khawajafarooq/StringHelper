//: Playground - noun: a place where people can play

import Foundation

extension String {
    
    /* Get length of string */
    func length() -> Int {
        return self.characters.count
    }
    
    /* Trim leading or trailing white spaces */
    func trim() -> String {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }

    /* Check if string contains a single numeric digit */
    func isSingleNumericDigit() -> Bool {
        if self.length() != 1 {
            return false
        }
        else {
            let numberPredicate: NSPredicate = NSPredicate(format: "SELF MATCHES '^[0-9]+$'", 1)
            return numberPredicate.evaluateWithObject(self)
        }
    }
}


var str = " Hello, playground "

str.length()
str.trim()
str.isSingleNumericDigit()

str = "c"
str.isSingleNumericDigit()

str = "1"
str.isSingleNumericDigit()