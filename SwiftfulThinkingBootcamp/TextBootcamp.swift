//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 30/03/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, world!".lowercased())
//            .font(.body) //// Sets the font style to the body font size.
////            .fontWeight(.semibold)  //// Sets the font weight to semibold.
//            .bold() // // Makes the text bold.
//            .underline(true, color: Color.red) //// Underlines the text with a red color.
//            .italic() // // Makes the text italic.
//            .strikethrough(true, color: Color.green) // // Draws a strikethrough line through the text with a green color.
//            .font(.system(size: 24, weight: .semibold, design: .serif)) //// Overrides the font style to a system font with size 24, semibold weight, and serif design.
//            .baselineOffset(-50.0) //// Moves the baseline of the text upward by 50 points.
//            .kerning(10) // // Adjusts the spacing between characters by adding 10 points of space between each character.
            .multilineTextAlignment(.leading) //// Sets the alignment of multiline text to leading.
            .foregroundColor(.red) // // Sets the text color to red.
            .frame(width: 200, height: 100, alignment: .leading) //// Sets the frame size and alignment for the text.
            .minimumScaleFactor(0.1) //// Sets the minimum scale factor that the system can use to scale the font size to fit the text within its bounds.
    }
}

#Preview {
    TextBootcamp()
}
