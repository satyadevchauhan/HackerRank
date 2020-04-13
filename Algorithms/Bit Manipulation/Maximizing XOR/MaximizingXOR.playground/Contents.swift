import Foundation

// Complete the maximizingXor function below.
func maximizingXor(l: Int, r: Int) -> Int {
    var max = 0
    for i in l...r {
        for j in l...r {
            let xor = i ^ j
            if max < xor {
                max = xor
            }
        }
    }
    
    return max
}

print(maximizingXor(l: 10, r: 15))  //7
print(maximizingXor(l: 11, r: 100))  //7
