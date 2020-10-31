//Longest Substring Without Repeating Characters
//let Input: String = "bbbbb"
//let Input: String = "pwwkew"
//let Input: String = ""
//Output: 3
//Explanation: The answer is "abc", with the length of 3.
 
let Input: String = "abcabcdbb"
func lenghtOflongestString(inputString: String) -> (countVal:Int ,SubstringVal:String) {
    var longest = 0
    var lastSubString = ""
    var character:[Character] = []
    for c in inputString {
        if !character.contains(c) {
            character.append(c)
        }else{
            longest = max(longest, character.count)
            if character.count > lastSubString.count{
                lastSubString = String(character)
            }
            character = [c]
        }
    }
    longest = max(longest, character.count)
    return (longest,lastSubString)
}
print(lenghtOflongestString(inputString: Input).countVal)
print(lenghtOflongestString(inputString: Input).SubstringVal)

