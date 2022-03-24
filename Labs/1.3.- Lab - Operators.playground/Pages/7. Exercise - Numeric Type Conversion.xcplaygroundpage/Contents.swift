/*:
 ## Exercise - Numeric Type Conversion

 Create an integer constant `x` with a value of 10, and a double constant `y` with a value of 3.2. Create a constant `multipliedAsIntegers` equal to `x` times `y`. Does this compile? If not, fix it by converting your `Double` to an `Int` in the mathematical expression. Print the result.
 */
let x: Int = 10, y: Double = 3.2
let multipledAsIntegers: Int = x * Int(y)
print(multipledAsIntegers)
/*:
 Create a constant `multipliedAsDoubles` equal to `x` times `y`, but this time convert the `Int` to a `Double` in the expression. Print the result.
 */
let multipleAsDouble: Double = Double(x) * y
print(multipleAsDouble)
/*:
 Are the values of `multipliedAsIntegers` and `multipliedAsDoubles` different? Print a statement to the console explaining why.
 */
print("Are different because in the first operation we doesn't multiply the decimals")
//: [Previous](@previous)  |  page 7 of 8  |  [Next: App Exercise - Converting Types](@next)
