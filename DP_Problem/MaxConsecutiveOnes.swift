import UIKit

var Input = [0,0,1,1,0,1,1,1,0,0,0]

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
      guard !nums.isEmpty else {
          return 0
      }

      var globalMax = 0
      var localMax = -1

      for i in 0..<nums.count {
          if nums[i] != 1 {
              localMax = i
          }
          globalMax = max(globalMax, i - localMax)
      }
      return globalMax
}
print(findMaxConsecutiveOnes(Input))

