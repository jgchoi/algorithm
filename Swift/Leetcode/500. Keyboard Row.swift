/*
 Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
 
 
 American keyboard
 
 
 Example 1:
 Input: ["Hello", "Alaska", "Dad", "Peace"]
 Output: ["Alaska", "Dad"]
 Note:
 You may use one character in the keyboard more than once.
 You may assume the input string will only contain letters of alphabet.
*/

func findWords(_ words: [String]) -> [String] {
    var result: [String] = []
    for i in 0..<words.count {
        if isPossible(words[i]) {
            result.append(words[i])
        }
    }
    return result
}

func isPossible(_ word: String) -> Bool {
    let wordRegex = "^[asdfghjkl]*$|^[qwertyuiop]*$|^[zxcvbnm]*$"
    let wordTest = NSPredicate(format:"SELF MATCHES %@", wordRegex)
    return wordTest.evaluate(with: word)
}
