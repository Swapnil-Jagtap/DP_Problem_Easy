import UIKit

//349.a. Find unique character of  given Two string
class StringUtil {
    static func getUniqueArray(nums:[String.Element]) -> [String] {
        var hashDict = [String:Int]()
        var arraySet = [String]()
        for numVal in nums {
            hashDict[String(numVal)] = (hashDict[String(numVal)] ?? 0) + 1
        }
        for item in hashDict {
            if item.value >= 1 {
                arraySet.append(item.key)
            }
        }
        return arraySet
    }
    
    static func getIntersectionArray(array1:[String.Element], array2:[String.Element]) -> [String] {
        let uniqueArr1 = self.getUniqueArray(nums: array1)
        let uniqueArr2 = self.getUniqueArray(nums: array2)
        print(uniqueArr1,uniqueArr2)
        var intersectionArray = [String]()
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

let input1 = "swapnil"
let input2 = "Asmita"
let input1Str = Array(input1.lowercased())
let input2Str = Array(input2.lowercased())
let output = StringUtil.getIntersectionArray(array1:input1Str, array2: input2Str)
print(output)  //output = "sai"



