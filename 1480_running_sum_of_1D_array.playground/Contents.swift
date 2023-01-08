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
    
    func betterSolution(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        for i in 0 ..< nums.count {
            var previousSum = result.last ?? 0
            var runningSum = previousSum + nums[i]
            result.append(runningSum)
        }
        return result
    }
    
    func overrideSolution(_ nums: inout [Int]) -> [Int] {
        for i in 1 ..< nums.count {
            nums[i] += nums[i - 1]
        }
        return nums
    }
}


var nums = [3,1,2,10,1]

let solution = Solution()
let result = solution.runningSum(nums)
let betterSolutionResult = solution.betterSolution(nums)
let overrideSolution = solution.overrideSolution(&nums)

print(result)
print(betterSolutionResult)
print(overrideSolution)
