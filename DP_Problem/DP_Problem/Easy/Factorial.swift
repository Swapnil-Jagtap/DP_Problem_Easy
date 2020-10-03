//Factorial of 7!
func factorial(_ n: Int) -> Double {
    if n == 0 {
        return 1
    }
    var a: Double = 1
    for i in 1...n {
        a *= Double(i)
    }
    return a
}
print(factorial(7) ) //5040
