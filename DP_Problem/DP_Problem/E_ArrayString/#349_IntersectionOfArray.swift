import UIKit

//349. Intersection of Two Arrays
class Math {
    static func getUniqueArray(nums:[Int]) -> [Int] {
        var hashDict = [Int:Int]()
        var arraySet = [Int]()
        for numVal in nums {
            hashDict[numVal] = (hashDict[numVal] ?? 0) + 1
        }
        for item in hashDict {
            if item.value >= 1 {
                arraySet.append(item.key)
            }
        }
        return arraySet
    }
    
    static func getIntersectionArray(array1:[Int], array2:[Int]) -> [Int] {
        let uniqueArr1 = self.getUniqueArray(nums: array1)
        let uniqueArr2 = self.getUniqueArray(nums: array2)
        print(uniqueArr1,uniqueArr2)
        var intersectionArray = [Int]()
        for val in uniqueArr1 {
            for i in 0..<uniqueArr2.count {
                if uniqueArr2[i] == val {
                    intersectionArray.append(val)
                }
            }
        }
        return intersectionArray
    }
}

let input1 = [9,4,9,8,4,2]
let input2 = [4,9,5]
let output = Math.getIntersectionArray(array1:input1 , array2: input2)
print(output)



