//Reverse string

var string = ["h","e","l","l","o"]
func reverseString(_ s: inout [String])-> [String] {
//    s.reverse() //native API
    var left = 0
    var right = s.count - 1
    while left < right {
        let temp = s[left]
        s[left] = s[right]
        s[right] = temp
        left+=1
        right-=1
    }
    return s
}
print(reverseString(&string))

