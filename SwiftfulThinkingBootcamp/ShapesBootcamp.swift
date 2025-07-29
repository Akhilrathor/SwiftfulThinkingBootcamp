//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 31/03/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle() // // Draws a circle shape.
//        Ellipse() //// Draws an ellipse shape.
//        Capsule(style: .circular) // // Draws a capsule shape with circular ends.
//        Rectangle() //// Draws a rectangle shape.
        RoundedRectangle(cornerRadius: 10) //// Draws a rectangle shape with rounded corners having a corner radius of 10.
//            .fill(Color.green) //// Fills the shape with green color.
//            .foregroundColor(.pink) //// Sets the foreground color of the shape to pink.
//            .stroke() //// Draws a stroke around the shape with the default stroke color.
//            .stroke(Color.red) //// Draws a stroke around the shape with a red color.
//            .stroke(Color.blue, lineWidth: 30)//// Draws a stroke around the shape with a blue color and a line width of 30.
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30])) //// Draws a stroke around the shape with an orange color, custom stroke style with a line width of 20, round line caps, and a dashed pattern of 30 points.
//            .trim(from: 0.2, to: 1.0) //// Trims the shape from 20% to 100% of its length.
            //.stroke(Color.purple, lineWidth: 50) //// Draws a stroke around the trimmed shape with a purple color and a line width of 50.
            .frame(width: 300, height: 200) //// Sets the frame size of the shape.
    }
}

#Preview {
    ShapesBootcamp()
}
