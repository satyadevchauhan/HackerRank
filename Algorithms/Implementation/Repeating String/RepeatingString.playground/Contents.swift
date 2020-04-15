import Foundation

// Complete the repeatedString function below.
func repeatedString(s: String, n: Int) -> Int {
    
    //Determine how many a's are there in substring
    var subStringCount = 0
    s.forEach { (char) in
        if char == "a" {
            subStringCount += 1
        }
    }
    
    //Determine how many complete substrings we will formed
    let divisor = n / s.count
    var totalCount = divisor * subStringCount

    //Determines how many characters are left be analysed
    let remainder = n % s.count

    for char in s.prefix(remainder) {
        if(char == "a"){
            totalCount += 1
        }
    }
    
    return totalCount
}

print(repeatedString(s: "aba", n: 10))  //Output 7

print(repeatedString(s: "a", n: 1000000000000)) //Output 1000000000000
