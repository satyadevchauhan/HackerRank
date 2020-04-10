import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    
    var primaryDiagonalSum = 0
    var secondaryDiagonalSum = 0
    
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if i == j {
                primaryDiagonalSum += arr[i][j]
            }
            if i + j == arr.count - 1 {
                secondaryDiagonalSum += arr[i][j]
            }
        }
    }
    
    return abs(primaryDiagonalSum - secondaryDiagonalSum)
}

print(diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]]))   //15
