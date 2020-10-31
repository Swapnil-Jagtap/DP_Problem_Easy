//Given an array of integers, find if the array contains any duplicates.
//Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

var numbers = [1,2,3,1,5,6,7]  //true
func isAnyDuplicate(_ nums: [Int]) -> Bool {
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[j] == nums[i] {
                return true
            }
        }
    }
    return false
}
 
print(isAnyDuplicate(numbers)

