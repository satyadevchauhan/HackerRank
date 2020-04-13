import Foundation

// Complete the lonelyinteger function below.
func lonelyinteger(a: [Int]) -> Int {
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


print(lonelyinteger(a: [1]))    //1
print(lonelyinteger(a: [1, 1, 2]))  //2
print(lonelyinteger(a: [0, 0, 1, 2, 1]))    //2

func lonelyintegerAdv(a: [Int]) -> Int {

    for element in a {
        if (a.filter{ $0 == element }).count == 1 {
            return element
        }
    }
    
    return 0
}

print(lonelyintegerAdv(a: [1]))    //1
print(lonelyintegerAdv(a: [1, 1, 2]))  //2
print(lonelyintegerAdv(a: [0, 0, 1, 2, 1]))    //2
