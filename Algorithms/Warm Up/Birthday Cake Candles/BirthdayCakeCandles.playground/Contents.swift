import Foundation

// Complete the birthdayCakeCandles function below.
func birthdayCakeCandles(ar: [Int]) -> Int {
    var max = 0
    ar.forEach { (element) in
        if element > max {
            max = element
        }
    }
    
    var result = 0
    ar.forEach { (element) in
        if element == max {
            result += 1
        }
    }
    
    return result
}

print(birthdayCakeCandles(ar: [3, 2, 1, 3]))

