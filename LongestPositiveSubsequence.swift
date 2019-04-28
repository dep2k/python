import Foundation

class Solution {
	func maxset(_ A: inout [Int]) -> [Int] {

        var row = 0
        var subArrays = [[Int]]()
        subArrays.append ([Int] ())
        for value in A {
            if value >= 0 {
                subArrays[row].append(value)
            } else{
                row += 1
                subArrays.append ([Int]())
            }
        }
        
        var maxSum = 0 
        var maxIndex = 0
        var index = 0
        for subArray in subArrays {
            let total = subArray.reduce(0, +)
            if total > maxSum {
                maxSum = total
                maxIndex = index
            }
            index += 1
        }
       
        if subArrays.count > 0 {
             return subArrays[maxIndex]
        }
  
        return []
	}
}