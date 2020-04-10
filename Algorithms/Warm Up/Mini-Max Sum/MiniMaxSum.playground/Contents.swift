import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
    arr.sorted()
    print("\(arr.prefix(4).reduce(0, +)) \(arr.suffix(4).reduce(0, +))")
}

miniMaxSum(arr: [1, 2, 3, 4, 5]) //10 14


