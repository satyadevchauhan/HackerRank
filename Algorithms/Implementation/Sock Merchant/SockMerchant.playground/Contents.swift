import Foundation

// Complete the sockMerchant function below.
func sockMerchant(_ ar: [Int]) -> Int {

    var dict = [Int: Int]()
    ar.forEach { (element) in
        if let value = dict[element] {
            dict[element] = value + 1
        } else {
            dict[element] = 1
        }
    }

    let res = Array(dict.values)
    var value = 0
    res.forEach { (element) in
        value = value + element/2
    }

    return value
}

let input1 = [1, 1, 3, 1, 2, 1, 3, 3, 3, 3] //output: 4
print(sockMerchant(input1))

let input2 = [10, 20, 20, 10, 10, 30, 50, 10, 20] //output: 3
print(sockMerchant(input2))
