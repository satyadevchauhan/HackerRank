import Foundation

/*
 * Complete the simpleArraySum function below.
 */
func simpleArraySum(ar: [Int]) -> Int {
    var sum = 0
    ar.forEach { num in
        sum += num
    }
    return sum
}

print(simpleArraySum(ar: [1, 2, 3, 4, 10, 11]))  //Output: 31
