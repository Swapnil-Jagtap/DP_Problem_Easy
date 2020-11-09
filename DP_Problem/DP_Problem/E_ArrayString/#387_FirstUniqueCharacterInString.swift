//First Unique Character in a String
//Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.
//Examples:
//s = "leetcode"
//return 0.

//s = "loveleetcode"
//return 2.
//Note: You may assume the string contains only lowercase English letters.

let input = "loveleetcode"
func FirstUniqueCharacterIndex(InputString:String) -> Int {
    var hashMap = [String:Int]()
    let arrayChar = Array(InputString)
    for i in 0..<arrayChar.count {
        hashMap[String(arrayChar[i])] = (hashMap[String(arrayChar[i])] ?? 0) + 1
    }
    for i in 0..<arrayChar.count {
        if  hashMap[String(arrayChar[i])]  == 1 {
            return i
        }
    }
    return -1
}

print(FirstUniqueCharacter(InputString: input))


// With test cases
let input:String? = "mornming"
func findFirstNonrepatingChar(strVal:String?) -> String {
    guard let str = strVal else {
        return "Given string is nil"
    }
    var hashDict = [String:Int]()
    for iteam in str {
        hashDict[String(iteam)] = (hashDict[String(iteam)] ?? 0) + 1
    }
    for item in str {
        if hashDict[String(item)] == 1 {
            return String(item)
        }
    }
    return "No unique cahr found in given string"
}
print(findFirstNonrepatingChar(strVal: input))
