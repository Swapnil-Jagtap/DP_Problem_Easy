 //#1
//Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.
//Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.
  
//Example 1:
//Input: nums = [2,0,2,1,1,0]
//Output: [0,0,1,1,2,2]
 
var numbers = [2,0,2,1,1,0]
func sortArray(nums:inout [Int]) -> [Int] {
    var count0 = 0
    var count1 = 0
    var count2 = 0
    for i in 0..<nums.count {
        switch nums[i] {
        case 0:
            count0 = count0 + 1
        case 1:
            count1 = count1 + 1
        case 2:
            count2 = count2 + 1
        default:
            break
        }
    }
    var i = 0
    while count0 > 0 {
        nums[i] = 0
        i = i+1
        count0 = count0 - 1
    }
    while count1 > 0 {
        nums[i] = 1
        i = i+1
        count1 = count1 - 1
    }
    while count2 > 0 {
        nums[i] = 2
        i = i+1
        count2 = count2 - 1
    }
    return nums
}
print(sortArray(nums: &numbers))
 
 
 // #2
//Find the kth largest element in an unsorted array. Note that it is the kth largest element in the sorted order, not the kth distinct element.
//Example 1:
//Input: [3,2,1,5,6,4] and k = 2
//Output: 5
//[1,2,3,4,5,6]
 
//Example 2:
//Input: [3,2,3,1,2,4,5,5,6] and k = 4
//Output: 4
//[1, 2, 2, 3, 3,4,5,5,6]
 
var numbers = [3,2,3,1,2,4,5,5,6]
let kth = 4
func sortArrayAsend(nums:inout [Int], kNum:Int) -> [Int] {
    for i in stride(from: nums.count-1, through: 0, by: -1) {
        for j in 1..<nums.count {
            if (nums[j-1] > nums[j]){
                let temp = nums[j-1];
                nums[j-1] = nums[j];
                nums[j] = temp;
        }
    }
}
    print(nums[nums.count-kth])
    return nums
}
print(sortArrayAsend(nums: &numbers, kNum: kth))
