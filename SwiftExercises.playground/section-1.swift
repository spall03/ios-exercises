import UIKit

/*

Strings

*/



func favoriteCheeseStringWithCheese(cheese: String) -> String {
    
    var sentence = "My favorite cheese is \(cheese)."
    
    return sentence
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary.updateValue("five", forKey: 5)


/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10
{
    println(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<11
{
    println(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    
    var drinks:[String] = [] //declare empty array of strings
    
    for char in characters //loop through array of character dictionaries
    {
        drinks.append(char["favorite drink"]!) //access favorite drink in each dictionary
        
    }
    
    return drinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

func stringCombiner(arr: [String]) -> String
{
    var result = "" //empty string for result
    
    for var st = 0; st < arr.count; st++ //loop through each string in the array
    {
        if st < arr.count - 1
        {
            result += "\(arr[st]);" //append string to result followed by semicolon...
        }
        else
        {
            result += "\(arr[st])" //unless it's the last string in the array, which doesn't get a semicolon.
        }
        
    }
    
    return result
    
}

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

stringCombiner(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

var sortedCerealArray = sorted(cerealArray)

// Use a closure to sort this array alphabetically
// WORK HERE
