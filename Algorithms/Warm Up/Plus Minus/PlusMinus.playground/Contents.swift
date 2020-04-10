import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {

    var posCount = 0
    var negCount = 0
    var zerCount = 0

    arr.forEach { element in
        if element > 0 {
            posCount += 1
        } else if element == 0 {
            zerCount += 1
        } else {
            negCount += 1
        }
    }
    
    let pos = Float(posCount)/Float(arr.count)
    let neg = Float(negCount)/Float(arr.count)
    let zer = Float(zerCount)/Float(arr.count)
    
    print(pos)
    print(neg)
    print(zer)
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])    //0.500000, 0.333333, 0.166667
