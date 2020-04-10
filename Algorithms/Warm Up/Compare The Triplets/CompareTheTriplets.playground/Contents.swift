import Foundation

// Complete the compareTriplets function below.
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result = [0, 0]
    let size = a.count > b.count ? b.count : (a.count == b.count ? a.count : b.count)
    
    for index in 0..<size {
        if a[index] > b[index] {
           result[0] += 1
        } else if a[index] == b[index] {
            continue
        } else {
            result[1] += 1
        }
    }

    return result
}

print(compareTriplets(a: [5, 6, 7], b: [3, 6, 10])) //[1 1]
print(compareTriplets(a: [17, 28, 30], b: [99, 16, 8])) //[2 1]

