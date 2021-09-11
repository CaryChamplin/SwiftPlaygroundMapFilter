/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 ## Basic Map Examples
 Basic examples of using **map** on simple arrays.
 */
// map an array of numbers to an array of their squares
let numberArray = [1, 2, 3, 4, 5]
let squaredArray = numberArray.map { $0 * $0 }
squaredArray

// map an array of Fahrenheit values to an array of their Celcius equivalents
let fahrenheit = [-40.0, -4.0, 32.0, 98.6, 212.0]
let celcius = fahrenheit.map { ($0 - 32) * 5 / 9 }
celcius

// map an array of numbers to an array of their string equivalents
let numberArray2 = [1, 2, 3, 4, 5]
let numStrings = numberArray2.map { "\($0)" }
numStrings
/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
