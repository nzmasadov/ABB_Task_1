import UIKit
import Foundation

extension Collection {
    public func enumeratedMap(completion: (Int, Element) -> Element) -> [Element] {
    var idx = 0
    var arr: [Element] = []
        
    for i in self {
        arr.append (completion (idx, i))
        idx += 1
    }
        return arr
    }
}

func digits(number: Int) -> [Int] {
    if number > 0 {
        var digits = [Int]()
        var num = number
        var digit = 0
        var numberOfDigits = 0
        while num > 0 {
            numberOfDigits += 1
            num = num / 10
        }
        num = number
        
        while num > 0 {
            digit = num / Int(pow(Double(10),Double(numberOfDigits - 1)))
            digits.append(digit)
            num = num % Int(pow(Double(10),Double(numberOfDigits - 1)))
            numberOfDigits -= 1
        }
        return digits
    } else {
        var digits = [Int]()
        var num = number
        var digit = 0
        var numberOfDigits = 0
        while num < 0 {
            numberOfDigits += 1
            num = num / 10
        }
        num = number
        while num < 0 {
            digit = num / Int(pow(Double(10),Double(numberOfDigits - 1)))
            digits.append(digit)
            num = num % Int(pow(Double(10),Double(numberOfDigits - 1)))
            numberOfDigits -= 1
        }
        digits.indices.forEach({ idx in
            if idx != 0 {
                digits[idx]  = digits[idx] * -1
            }
        })
        return digits
    }
}
