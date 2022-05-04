// My answer to the HackerRank problem Minimum Swaps 2
// Problem: Find the minimum number of swaps it takes to order an unordered array.



func minimumSwapsTwo(arr: [Int]) -> Int {
    var amountOfSwaps: Int = 0
    var input = arr
    
    for i in 0..<input.count {
        if input[i] != i + 1,
           let index = input.firstIndex(of: i + 1) {
            input.swapAt(i, index)
            amountOfSwaps += 1
        }
    }
    
    return amountOfSwaps
}
