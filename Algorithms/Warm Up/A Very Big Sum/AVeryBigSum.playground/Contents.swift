import Foundation

// Complete the aVeryBigSum function below.
func aVeryBigSum(ar: [Int]) -> Int {
    var sum = 0
    ar.forEach { element in
        sum += element
    }
    return sum
}

print(aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]))    //Output: 5000000015
