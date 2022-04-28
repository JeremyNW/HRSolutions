// My two solutions to the HackerRank problem Ransom Note
// Problem - Given the words in the magazine and the words in the ransom note, print Yes if he can replicate his ransom note exactly using whole words from the magazine; otherwise, print No.

func checkMagazine(magazine: [String], note: [String]) -> Void {
    var amountOfWords: [String : Int] = [:]
    
    for word in magazine {
        amountOfWords[word, default: 0] += 1
    }
    for word in note {
        amountOfWords[word, default: 0] -= 1
        if amountOfWords[word, default: 0] < 0 {
            print("No")
            return
        }
        
    }
    print("Yes")
}

func checkMagazineTWO(magazine: [String], note: [String]) -> Void {
    var ransomNote: [String] = []
    var magazeen = magazine
    
    for word in note {
        for string in magazeen where word == string {
            ransomNote.append(string)
            let index = magazeen.firstIndex(of: string)
            magazeen.remove(at: index!)
            break
        }
    }
    if ransomNote == note {
        print("Yes")
    } else {
        print("No")
    }
}
