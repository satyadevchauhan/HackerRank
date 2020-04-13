import Foundation

/*
 * Complete the timeConversion function below.
 */
func timeConversion(s: String) -> String {
    let timeComponents = s.split(separator: ":")
    var hour = String(timeComponents[0])
    let min = timeComponents[1]
    let sec = timeComponents[2].prefix(2)
    let ampm = timeComponents[2].suffix(2)
    
    if ampm == "PM" {
        if let thisHour = Int(hour), thisHour < 12 {
            let newHour: Int = thisHour + 12
            hour = String(newHour)
        }
    } else {
        if let thisHour = Int(hour), thisHour == 12 {
            hour = "00"
        }
    }
    
    return hour + ":" + min + ":" + sec
}

print(timeConversion(s: "07:05:45PM"))  //19:05:45
print(timeConversion(s: "12:45:54PM"))  //12:45:54
print(timeConversion(s: "12:40:22AM"))  //00:40:22
print(timeConversion(s: "06:40:03AM"))  //06:40:03






