//: Playground - noun: a place where people can play

import Foundation

extension String {
    
    /* Get length of string */
    var length: Int {
        return self.characters.count
    }
    
    /* Trim leading or trailing white spaces */
    var trim: String {
        return self.trimmingCharacters(in: .whitespaces)
    }

    /* Check if string contains a single numeric digit */
    var isSingleNumericDigit: Bool {
        if self.length != 1 {
            return false
        }
        else {
            let numberPredicate: NSPredicate = NSPredicate(format: "SELF MATCHES '^[0-9]+$'", 1)
            return numberPredicate.evaluate(with: self)
        }
    }
}

var str = " Hello, playground "

str.length
str.trim
str.isSingleNumericDigit

str = "c"
str.isSingleNumericDigit

str = "1"
str.isSingleNumericDigit
