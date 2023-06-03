/*
 Hello! Thank you for taking the time to complete our
 coding challenge. There are 3 challenges, each on a
 separate page. The clue derived from each page will
 provide instructions for the next challenge.
 
 We recommend turning "Editor > Show Rendered Markup"
 on for a classier experience.
 
 When you are done, please rename this playground to
 "first-last Ramp Challenge.playground" and submit it to
 ios-submissions@ramp.com.
 
 Good Luck!
 
 - The Ramp Mobile Team
 
 */

// = = = = = = = = = = = = = = = = = = = = = = = =

//: [Challenge 1](@previous)
//: #### Challenge 2
//: Get the prompt from Challenge 1 and paste it below.
//: Solve the challenge to get the prompt for Challenge 3.

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let prompt = """
Next we've hosted a JSON file at at this url: https://api.jsonbin.io/v3/b/646bed328e4aa6225ea22a79. Your job is to write a script to
download the contents of the URL (hint: The X-ACCESS-KEY is $2b$10$Ke1iwieFO7/7qsSKU.GYU.oYXZMW1EeHrwd4xx9ylboJik5mstZk6)
sort the data by each elements 'bar' key
filter out elements where 'baz' is not divisible by 3
concatenate each elements 'foo' value

Do each of these steps to reveal the instructions for the final part. Remember to show your work!
"""

// Show your work here! When you are done move on to Challenge 3

private let challage = Challange2()
let nextPropmt = challage.propmt()
if let nextPropmt = nextPropmt{
    debugPrint(nextPropmt)
}

//: [Challenge 3](@next)
