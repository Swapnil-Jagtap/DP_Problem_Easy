//First Unique Character in a String
//Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.
//Examples:
//s = "leetcode"
//return 0.

//s = "loveleetcode"
//return 2.
//Note: You may assume the string contains only lowercase English letters.

let input = "loveleetcode"
func FirstUniqueCharacter(InputString:String) -> Int {
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
