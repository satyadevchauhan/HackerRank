import Foundation

// Complete the jumpingOnClouds function below.
func jumpingOnClouds(c: [Int]) -> Int {
    
    var jumps = 0, i = 0, N = c.count;
    
    while(true) {
        if (i + 2 < c.count && c[i + 2] == 0) {
            i += 2
        } else if(i + 1 < N) {
            i += 1
        } else {
            break
        }
        jumps += 1
    }
    
    return jumps
}

var input0 = [0, 0, 1, 0, 0, 1, 0]   //Output 4
print(jumpingOnClouds(c: input0))

var input = [0, 0, 0, 0, 1, 0]  //Output 3
print(jumpingOnClouds(c: input))



