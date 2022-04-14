func hourglassSum(arr: [[Int]]) -> Int {
    var largest = Int.min
    
    for row in 0...3 {
        for column in 0...3 {
            var sum = 0
            
            sum += arr[row][column]
            sum += arr[row][column + 1]
            sum += arr[row][column + 2]
            sum += arr[row + 1][column + 1]
            sum += arr[row + 2][column]
            sum += arr[row + 2][column + 1]
            sum += arr[row + 2][column + 2]
            
            largest = sum > largest ? sum : largest
        }
    }
    return largest
}
