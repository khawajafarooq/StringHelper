## StringHelper

Playground demonstration for string extension.

### How can you use it?
Best way to use it by making its String extension.

```
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
```
### Usage

```
var str = " Hello, playground "

str.length()

str.trim()

str = "c"
str.isSingleNumericDigit()

str = "1"
str.isSingleNumericDigit()

```

### Compatibility
Verified that this repository's code works in XCode 8 with Swift 3.0
