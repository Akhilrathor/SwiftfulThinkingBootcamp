//
//  GeometryReaderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 05/08/25.
//
/*
 8. What is the GeomatriReader and what is the use?
 Ans.
 
 GeometryReader is a container view in SwiftUI that gives access to the size and position of the container or screen using a GeometryProxy object.
 
 🎤 Interview One-Liner:
 "GeometryReader lets us access layout and positioning info like width, height, and coordinates, which is useful for building responsive and dynamic SwiftUI layouts."
 
 
 */

import SwiftUI

struct GeometryReaderBootcamp: View {
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0){
                Rectangle().fill(Color.red)
                    .frame(width: geometry.size.width * 0.666)
                Rectangle().fill(Color.blue)
            }
            .ignoresSafeArea()
            
        }
    }
}

#Preview {
    GeometryReaderBootcamp()
}
