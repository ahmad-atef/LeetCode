import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var runningSum: [Int] = []
        
        for i in 0 ..< nums.count {
            var sum = 0
            for j in 0...i {
                sum += nums[j]
            }
            runningSum.append(sum)
        }
        return runningSum
    }
}


let nums = [3,1,2,10,1]

let solution = Solution()
let result = solution.runningSum(nums)

print(result)
