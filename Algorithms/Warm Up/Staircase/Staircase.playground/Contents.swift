import Foundation

// Complete the staircase function below.
func staircase(n: Int) -> Void {
    // iterate over range of 1 and n
    for step in (1...n).reversed() {
        // repeat \s and # accordingly
        print(String(repeating: " ", count: step - 1) + String(repeating: "#", count: n + 1 - step))
    }
}

staircase(n: 6)

/*Output:
     #
    ##
   ###
  ####
 #####
######
*/
