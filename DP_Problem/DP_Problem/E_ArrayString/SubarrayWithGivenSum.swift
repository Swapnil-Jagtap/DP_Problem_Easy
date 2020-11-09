import UIKit
//Find subarray with given sum | Set 1 (Nonnegative Numbers)
let Input = [1, 4, 20, 3, 10, 5]
let sum = 33
func findTheSubArray(nums:[Int],sum:Int) -> [Int] {
    var currentSum = 0
    var subArray = [Int]()
    for i in 0..<nums.count {
        currentSum = nums[i]
        for j in i+1..<nums.count {
            currentSum = currentSum + nums[j]
            if currentSum == sum {
                subArray.append(contentsOf: nums[i...j])
                break
            }
        }
    }
    return subArray
}
print(findTheSubArray(nums: Input, sum: sum))


