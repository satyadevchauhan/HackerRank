import Foundation

// Complete the lonelyinteger function below.
func lonelyInteger(a: [Int]) -> Int {
    var dict = [Int : Int]()
    a.forEach { (element) in
        if let value = dict[element] {
            dict[element] = value + 1
        } else {
            dict[element] = 1
        }
    }
    
    var lonely = 0
    dict.keys.forEach { (key) in
        if dict[key] == 1 {
            lonely = key
        }
    }
    
    return lonely
}


print(lonelyInteger(a: [1]))    //1
print(lonelyInteger(a: [1, 1, 2]))  //2
print(lonelyInteger(a: [0, 0, 1, 2, 1]))    //2

func lonelyIntegerAdv(a: [Int]) -> Int {

    for element in a {
        if (a.filter{ $0 == element }).count == 1 {
            return element
        }
    }
    
    return 0
}

print(lonelyIntegerAdv(a: [1]))    //1
print(lonelyIntegerAdv(a: [1, 1, 2]))  //2
print(lonelyIntegerAdv(a: [0, 0, 1, 2, 1]))    //2
