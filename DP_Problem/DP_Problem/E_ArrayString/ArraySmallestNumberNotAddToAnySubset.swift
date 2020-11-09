
import UIKit
//Find the smallest positive integer value that cannot be represented as sum of any subset of a given array in swift
//Suppose we have a sorted array of positive numbers, this array is sorted in ascending order, er have to find the smallest positive value that cannot be represented as sum of elements of any subset of given set. We have to solve this problem in O(n) time.
//
//So, if the input is like A = [1, 4, 8, 12, 13, 17], then the output will be 2.

let input = [1, 2, 8, 12, 13, 17]
func findSmallestNumberCanNotBeSubSetOfArray(nums:[Int]) -> Int {
    var ans = 1
    for number in nums {
        if number <= ans {
            ans = ans + number
        }else{
            break
        }
    }
    return ans
}
print(findSmallestNumberCanNotBeSubSetOfArray(nums: input))

