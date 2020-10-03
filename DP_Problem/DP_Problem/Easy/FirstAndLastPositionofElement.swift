//Find First and Last Position of Element in Sorted Array
 
var Input:[Int] = [5,7,7,8,8,10,8]
let target = 8
//Output: [3,4,6]
 
func findIndexOfTarget(inputArray: [Int], target:Int)-> [Int] {
    var resultIndex = [Int]()
    if !inputArray.contains(target){
        return [-1,-1]
    }
    for i in 0..<inputArray.count {
        if inputArray[i] == target {
            resultIndex.append(i)
        }
    }
    return resultIndex
}
print(findIndexOfTarget(inputArray: Input, target: target))

