import Foundation

class Solution {
	func coverPoints(_ A: inout [Int], _ B: inout [Int]) -> Int {
        
        let count = A.count
        var totalSteps = 0
        for index in 0..<(count-1) {
            let deltaX = abs(A[index] - A[index+1])
            let deltaY = abs(B[index] - B[index+1])
            let steps = abs(deltaX - deltaY) + min(deltaX,deltaY)
            totalSteps += steps
        }
        return totalSteps
        
	}
}
