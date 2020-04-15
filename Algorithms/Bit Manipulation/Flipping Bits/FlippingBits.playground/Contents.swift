import Foundation

// Complete the flippingBits function below.
func flippingBits(n: Int) -> Int {
    let initialBits = String(n, radix: 2)
    print("initialBits \(initialBits)")
    //let invertedBits = ~initialBits
    
    return Int(initialBits) ?? 0
}

print(flippingBits(n: 2147483647))  //2147483648
print(flippingBits(n: 10))  //4294967294
print(flippingBits(n: 0))   //4294967295
