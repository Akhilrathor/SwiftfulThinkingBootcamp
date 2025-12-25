//
//  ModifiersBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 03/08/25.
//
/*
 4. What are the modifiers in SwiftUI?
Ans.
 
 Modifiers in SwiftUI are methods you apply to views to change their appearance, behavior, or layout.
 
 🔸 Common Types of Modifiers:
 Category               Examples
 💄 Appearance     .font(),.foregroundColor(),.background()
 📐 Layout         .padding(), .frame(), .offset()
 🎯 Interaction    .onTapGesture(), .gesture()
 🧩 View Composition    .overlay(), .background(), .mask()
 🔄 Animation    .animation(), .transition(),.withAnimation()
 🧭 Navigation    .navigationTitle(), .sheet(), .navigationLink()
 */

import SwiftUI

struct ModifiersBootcamp: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .font(.title)
            .foregroundColor(.blue)
            .padding()
            .background(Color.yellow)
            .cornerRadius(10)

    }
}

#Preview {
    ModifiersBootcamp()
}
