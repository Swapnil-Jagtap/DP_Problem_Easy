// How to Find Top Two Maximum Numbers from Integer Array
let input = [3,7,1,9,2,4,6]
func findTopTwoMaxNumber(nums:[Int]) -> (Max1:Int,Max2:Int) {
    var max1:Int = -1
    var max2:Int = -1
    for number in nums {
        if number > max1 {
            max2 = max1
            max1 = number
        }else{
            if number > max2 {
                max2 = number
            }
        }
    }
    return(max1,max2)
}
let tuppleVal = findTopTwoMaxNumber(nums: input)
print(tuppleVal.Max1, tuppleVal.Max2)

