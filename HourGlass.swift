// Hourglass sum
import Foundation

// Complete the hourglassSum function below.
func hourglassSum(arr: [[Int]]) -> Int {

    var maxSum = 0;
    
    let totalRows = arr.count
    let totalColumns = arr[0].count

    let totalWatchGlasses = (totalRows - 2) * (totalColumns - 2)
    //Outer most loop
    for watchGlassIndex in 0..<totalWatchGlasses {

        var hourGlassSum = 0;

        let startRow = watchGlassIndex / (totalColumns - 2) 
        let startCol = watchGlassIndex % (totalColumns - 2)

        let endRow = startRow + 2
        let endCol = startCol + 2

        //let row = startRow;
      //  let col = startCol;

        var index = 1
        for row in startRow...endRow {
            for col in startCol...endCol{
                if(index == 4 || index == 6) {} else {
                    let value  = arr[row][col]
                    hourGlassSum += value
                }
                index += 1
            }
        }
       
       if (watchGlassIndex == 0){
           maxSum = hourGlassSum;
       }

       if (hourGlassSum > maxSum){
           maxSum = hourGlassSum;
       }
    }

    return maxSum;

}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

let arr: [[Int]] = AnyIterator{ readLine() }.prefix(6).map {
    let arrRow: [Int] = $0.split(separator: " ").map {
        if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }

    return arrRow
}

guard arr.count == 6 else { fatalError("Bad input") }

let result = hourglassSum(arr: arr)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)