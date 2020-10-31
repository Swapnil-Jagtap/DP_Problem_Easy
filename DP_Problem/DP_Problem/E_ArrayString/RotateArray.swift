//Given an array, rotate the array to the right by k steps, where k is non-negative.
var numbers = [1,2,3,4,5,6,7] // 5671234
let k = 2
    func rotate(_ nums: inout [Int], _ k: Int) -> [Int] {
        var temp, previous: Int
        for i in 0..<k {
            previous = nums[nums.count - 1]
            for j in 0..<nums.count {
                temp = nums[j]
                nums[j] = previous
                previous = temp
            }
        }
        return nums
    }
print(rotate(&numbers, k))

