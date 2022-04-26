// My solution to the Counting Valleys problem
// Problem - Track the steps of a hiker given a string of steps up ("U") and down ("D") and determine how many valleys he hikes through.
// The hiker starts at sea level and a valley is whenever the hiker steps below sea level and steps back to sea level. 


func countingValleys(steps: Int, path: String) -> Int {
    var valleys: Int = 0
    var level: Int = 0
    var isInValley = false
    
    for c in path {
        if c == "D" {
            level -= 1
        } else if c == "U" {
            level += 1
        }
        if level < 0 {
            isInValley = true
        }
        if level == 0 && isInValley {
            valleys += 1
            isInValley = false
        }
    }
    
    return valleys
}
