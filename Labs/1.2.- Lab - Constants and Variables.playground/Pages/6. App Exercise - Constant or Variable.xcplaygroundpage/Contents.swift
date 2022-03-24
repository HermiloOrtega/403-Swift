/*:
 ## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
 - Name: The user's name
 - Age: The user's age
 - Number of steps taken today: The number of steps that a user has taken today
 - Goal number of steps: The user's goal for number of steps to take each day
 - Average heart rate: The user's average heart rate over the last 24 hours
 */
let nameUser: String = "Hermilo"
print("I choose a constant String with the nameUser because this value doesn't have to change")

var ageUser: Int = 28
print("I choose a variable Int to ageUser because every year this variable has to change and be updated")

var numSteps: Int = 43_324
print("I choose a variable Int to numSteps because every step we have to update this number to know the current number of steps")

var goalSteps: Int = 30_000
print("I choose a variable Int to goalSteps because even if is a goal that can be always the same, i want to have the possibility to update it when the user wants to increase or decrease the goal")

var avgHeartRate: Int = 100
print("I choose a variable Int to avgHeartRate because this rate is not strict, depends of different factors to know the current value")
/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 */
//: [Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
