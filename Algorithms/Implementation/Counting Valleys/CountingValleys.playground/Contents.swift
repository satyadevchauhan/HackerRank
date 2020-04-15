import Foundation

// Complete the countingValleys function below.
func countingValleys(s: String) -> Int {

    var valleys = 0
    var height = 0
    s.forEach { (element) in

        if element == "U" {
            height += 1
        } else {
            if height == 0 {
                valleys += 1
            }
            height -= 1
        }
    }

    if height < 0 {
        valleys -= 1
    }
    
    return valleys
}

var input0 = "UDDDUDUU" //1
print(countingValleys(s: input0))

var input2 = "UDUUUDUDDD"   //0
print(countingValleys(s: input2))

var input9 = "UDUDDUUUDUDUDUUDUUDDDDDUDUDDDDUUDDUDDUUUUDUUDUDDDDUDUDUUUDDDUUUDUDDUUDDDUUDDUDDDUDUUDUUDUUDUDDDUUUUU" //6
print(countingValleys(s: input9))
