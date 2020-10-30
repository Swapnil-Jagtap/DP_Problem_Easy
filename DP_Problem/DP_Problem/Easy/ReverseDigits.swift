//#1Given a 32-bit signed integer, reverse digits of an integer.
 
func reverseSignedInteger(xVal:Int) -> Int {
    var result:Int = 0
    var x = xVal
    var sign = 1
    if xVal<0 {
        sign = -1
    }
    while x != 0 {
        result = result * 10 + Int(x % 10)
        x = x/10
    }
    return (result * sign)
}
 
print(reverseSignedInteger(xVal:-123))   //-321


//#2Remove Duplicates from Sorted Array
let array = [0,0,1,1,1,2,2,3,3,4]
let uniqueUnordered = Array(Set(array))
let uniqueOrdered = Array(NSOrderedSet(array: array))
print(uniqueOrdered.count)
print(uniqueOrdered)

// Without HOF
import UIKit
var array = [0,0,1,1,1,2,2,3,3,4]
func removeDuplicate(nums: [Int]) -> [Int] {
    var resultArray = [Int]()
    for i in 0..<nums.count {
        if !resultArray.contains(nums[i]) {
            resultArray.append(nums[i])
        }
    }
    return resultArray
}
print(removeDuplicate(nums:array))
