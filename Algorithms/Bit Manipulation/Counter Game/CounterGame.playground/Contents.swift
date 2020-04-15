import Foundation

// Complete the counterGame function below.
func counterGame(n: Int) -> String {
    if powerOf2_1(n: n) {
        return "Louise"
    } else {
        return "Richard"
    }
}

func powerOf2_1(n: Int) -> Bool {
    var num = n
    
    if num == 0 {
        return false
    }
    
    //true till x is not equal to 1
    while num != 1 {
        //checks whether a number is divisible by 2
        if num % 2 != 0 {
            return false
        }
        num = num / 2
    }
    
    return true
}

func powerOf2_2(n: Int) -> Bool {
    return (n != 0) && (n & (n - 1) == 0)
}

func powerOf2_3(n: Int) -> Bool {
    let num: Double = Double(n)
    return ceil(log2(num)) == floor(log2(num))
}

//print(counterGame(n: 6))    //Richard
//print(counterGame(n: 4))    //Louise
//print(counterGame(n: 16))   //Louise
print(counterGame(n: 2103455570))   //Richard
print(counterGame(n: 562949953421312))   //Louise
print(counterGame(n: 1560834904))   //Richard
print(counterGame(n: 1768820483))   //Richard
print(counterGame(n: 1533726144))   //Louise
print(counterGame(n: 1620434450))   //Richard
print(counterGame(n: 1463674015))   //Louise
