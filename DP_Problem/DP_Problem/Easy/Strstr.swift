//Implement strStr().
//
//Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
//
//Example 1:
//
//Input: haystack = "hello", needle = "ll"
//Output: 2
//Example 2:
//
//Input: haystack = "aaaaa", needle = "bba"
//Output: -1
//Clarification:
//
//What should we return when needle is an empty string? This is a great question to ask during an interview.
//
//For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().

 
let haystac = "heeblllo"
let needle = "lll"
func strString(_ haystack: String, _ needle: String) -> Int {
    guard !needle.isEmpty else { return 0 }
    guard haystack.count >= needle.count else { return -1 }
    
    let shiftsCount = haystack.count - needle.count + 1
    for shift in 0..<shiftsCount {
        var isSubstring = true
        for offset in 0..<needle.count {
            let haystackCharacter = haystack[String.Index(encodedOffset: shift + offset)]
            let needleCharacter = needle[String.Index(encodedOffset: offset)]
            guard haystackCharacter == needleCharacter else {
                isSubstring = false
                break
            }
        }
        if isSubstring {
            return shift
        }
    }
    
    return -1
}
print(strString(haystac, needle))
