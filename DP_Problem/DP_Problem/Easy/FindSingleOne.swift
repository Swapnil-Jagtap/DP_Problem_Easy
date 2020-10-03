//Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 
var numbers = [4,1,2,1,2,1]  //4
func singleNumber(_ nums: [Int]) -> Int {
    var singleNum = 0
    var dictionary = [Int: Int]()
    for num in nums {
        dictionary[num] = (dictionary[num] ?? 0) + 1
    }
    for item in dictionary {
        if item.value == 1 {
            singleNum = item.key
        }
    }
    return singleNum
}
print(singleNumber(numbers))

