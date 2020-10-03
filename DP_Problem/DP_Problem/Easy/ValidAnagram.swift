
//Que:  Is “t” Anagram of “s”
    let s = "anagram"
    let t = "nagaram"
    
// Native API
    func isStringsAnagram(str1:String, str2:String)->Bool {
        if str1.count != str2.count {
            return false
        }
        if str1.sorted() == str2.sorted() {
            return true
        }
        return false
    }
    print(isStringsAnagram(str1: "car", str2: "rac"))
    

// Native API
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if (s.count != t.count) {
            return false;
        }
        var str1 = Array(s)
        var str2 = Array(t)
        str1.sort()
        str2.sort()
        if str1 == str2 {
            return true
        }
        return false
    }
    print("Is Anagram correct:", isAnagram(s, t))
    

// Without higherOrder function 
    func isanagram(sStr: String, tStr:String) -> Bool {
        var dict = [String:Int]()
        for keyStr in sStr {
            dict[String(keyStr)] = (dict[String(keyStr)] ?? 0 ) + 1
        }
        for char in tStr {
            if let val = dict[String(char)] {
                let updatedval = val - 1
                dict[String(char)] = updatedval
            }
        }
        for item in dict {
            if item.value > 0 {
                return false
            }
        }
        return true
    }
    print(isanagram(sStr: s, tStr: t))
