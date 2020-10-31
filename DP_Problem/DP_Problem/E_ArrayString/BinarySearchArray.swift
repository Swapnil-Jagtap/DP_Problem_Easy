import UIKit
//How to check if array contains a number
//This problem is essentially how to search an element in the array. There are two options sequential search or binary search. You should ask the interviewer about whether an array is sorted or not, if the array is sorted then you can use binary search to check if given number is present in an array or not. The complexity of binary search is O(logN). BTW, if interviewer says that array is not sorted then you can still sort and perform binary search otherwise you can use sequential search. Time complexity of sequential search in array is O(n).

let nums:[Int]? = [1,2,3,4,5,6]
let givenElement = 5
func findGivenElement(nums:[Int]?,givenElement:Int) -> Bool {
    guard let inputArray = nums else {return false}
    if inputArray.count > 2{
        var midIndex = inputArray.count / 2
        if givenElement == inputArray[midIndex]{
            return true
        }
        if givenElement > inputArray[midIndex] {
            // search in right half
            for i in midIndex+1..<inputArray.count {
                if inputArray[i] == givenElement {
                    return true
                }
            }
        }else{
            // search in left half
            for i in 0..<midIndex {
                if inputArray[i] == givenElement {
                    return true
                }
            }
        }
    }else{
        for item in inputArray {
            if item == givenElement {
                return true
            }
        }
    }
    return false
}
print(findGivenElement(nums: nums, givenElement: givenElement))



