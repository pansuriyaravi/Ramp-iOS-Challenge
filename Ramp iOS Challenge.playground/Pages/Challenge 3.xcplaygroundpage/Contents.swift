/*
 Hello! Thank you for taking the time to complete our
 coding challenge. There are 3 challenges, each on a
 separate page. The clue derived from each page will
 provide instructions for the next challenge.

 When you are done, please rename this playground to
 "first-last Ramp Challenge.playground" and submit it to
 ios-submissions@ramp.com.

 We recommend turning "Editor > Show Rendered Markup"
 on for a classier experience.

 Good Luck!

 - The Ramp Mobile Team

 */

// = = = = = = = = = = = = = = = = = = = = = = = =

//: [Challenge 2](@previous)
//: #### Challenge 3
//: Get the prompt from Challenge 2 and paste it below.
//: Solve the challenge, and take a screenshot of the rendered view.
//: Include the screenshot of the view in your submission!

import Foundation
import SwiftUI
import PlaygroundSupport

let prompt = """
"Nice Work! For the final challenge, update ContentView.body to display a smiley face using only native SwiftUI views (no Sf Symbols or emojis). Be creative and have fun! Don\'t forget to submit a screenshot of your view with the completed playground."
"""

// Show your work here! When you are done take a screenshot
// of the end result and follow the submission instructions above.
// Include the screenshot of the view in your submission!


PlaygroundPage.current
    .needsIndefiniteExecution = true
PlaygroundPage.current
    .setLiveView(ContentView())

/// Figma Refrence
/// https://www.figma.com/community/file/1103311534645934730

struct ContentView: View {
    var body: some View {
        SmileyFaceView()
            .padding(32)
    }
}

