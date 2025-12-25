//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 05/03/25.
//
/*
 Q1. What is the @State and @Binding and when to use these?
 Ans.
 
 @State is a property wrapper that allows a view to manage its own local, private data. When the state value changes, SwiftUI automatically re-renders the view to reflect those changes.
 
 📌 Key Points:
 * @State is used inside the same view only.

 * Should be private — because state is owned by the view.

 * Triggers view update on change.

 * Works like a lightweight reactive variable.
 
 
 @Binding is a property wrapper in SwiftUI used to create a two-way connection between a child view and a state property in the parent view. It allows a child view to read and write a value that is stored in a parent view, enabling shared state management across different views.
 
 
 */

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor:Color = Color.green
    @State var myTitle:String = "My Title"
    @State var count:Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1"){
                        backgroundColor = .red
                        myTitle = "BUTTON 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2"){
                        backgroundColor = .purple
                        myTitle = "BUTTON 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
