//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//You can return the answer in any order.
 
let Input: [Int] = [2,11,7,15,4,5]
let target:Int = 9
func twoSum(_ nums:[Int], _ target: Int) -> NSOrderedSet {
    var mutArray = [Int]()
    for index in 0..<nums.count {
        let complement = target - nums[index];
        if nums.contains(complement) {
            let complementIndex = nums.firstIndex(of: complement)
            mutArray.append(complementIndex!)
            mutArray.append(index)
        }
    }
    return NSOrderedSet(array: mutArray)
}
print(twoSum(Input, target))

