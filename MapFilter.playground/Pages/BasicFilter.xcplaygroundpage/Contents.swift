/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 ## Basic Filter Examples
 Basic examples of using **filter** on simple arrays.
 */
// filter an array of numbers extracting only even numbers
let numbersArray = [10, 11, 12, 13, 14, 15]
let mod2Array = numbersArray.filter { $0 % 2 == 0 }
mod2Array

// filter an array of all occurrances that match any of the elements in a second array
let mainArray = ["one", "two", "three", "four", "five", "six", "two", "two", "three", "seven", "eight"]
let miniArray = ["two", "three"]
let filteredElements = mainArray.filter( { miniArray.contains($0) } )
filteredElements
/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
