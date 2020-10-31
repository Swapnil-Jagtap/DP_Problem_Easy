import UIKit
// How to find duplicate number on Integer array
let nums = [1,3,5,3,8,2]
func findDuplictaeNumber(nums:[Int]) -> Int {
    var dict = [Int:Int]()
    for key in nums {
        dict[key] = (dict[key] ?? 0) + 1
    }
    for item in dict {
        if item.value > 1 {
            return item.key
        }
    }
    return 0
}
print(findDuplictaeNumber(nums: nums))

