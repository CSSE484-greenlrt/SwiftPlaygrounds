// Basic function
func stringRepeater(_ originalString: String, times repeatCount: Int) -> String {
    var repeatedString = ""
    for _ in 0..<repeatCount {
        repeatedString += originalString
    }
    return repeatedString
}

stringRepeater("B", times: 5)
stringRepeater("New York ", times: 2)

//stringRepeater("Ho! ", 3)
//stringRepeater("New York ", 2)




// Returning a tuple (multiple return values)
func stringLetterRepeater(_ originalString: String, _ repeatCount: Int) -> (String, String) {
    var repeatedString = ""
    for _ in 0..<repeatCount {
        repeatedString += originalString
    }
    
    var repeatedLetters = ""
    for letter in originalString {
        repeatedLetters += String(repeating: letter, count: repeatCount)
    }
    return (repeatedString, repeatedLetters)
}





var collated : String, uncollated : String
(collated, uncollated) = stringLetterRepeater("Ow! ", 4)
collated
uncollated







// Internal/External names plus Optional parameters
func stringDoubler(_ originalString: String, alternativeMultiple repeatCount: Int = 2) -> String {
    var repeatedString = ""
    for _ in 0..<repeatCount {
        repeatedString += originalString
    }
    return repeatedString
}


stringDoubler("Woof! ", alternativeMultiple: 3)
stringDoubler("Jingle Bells! ")
