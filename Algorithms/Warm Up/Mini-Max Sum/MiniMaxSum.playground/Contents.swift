import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
    let sorted = arr.sorted()
    let min = sorted.prefix(4).reduce(0, +)
    let max = sorted.suffix(4).reduce(0, +)
    print("\(min) \(max)")
}

miniMaxSum(arr: [1, 2, 3, 4, 5]) //10 14
miniMaxSum(arr: [7, 69, 2, 221, 8974])   //299 9271

