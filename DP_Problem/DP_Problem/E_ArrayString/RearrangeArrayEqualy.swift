import UIKit

let input = [5,5,5,5,7,7,7,7,8,8]
func rearangeArrayPossible(nums:[Int]) -> Bool {
    var count = nums.count
    var dict = [Int:Int]()
    if count % 2 == 0 {
        for key in nums {
            dict[key] = (dict[key] ?? 0) + 1
        }
        for item in dict {
            if item.value % 2 != 0 {
                return false
            }
        }
        return true
    }else{
        return false
    }
    return false
}
print(rearangeArrayPossible(nums: input))



