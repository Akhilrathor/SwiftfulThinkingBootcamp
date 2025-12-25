//
//  ViewBuilderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 03/08/25.
//
/*
 7. What is the ViewBuider?
 Ans.
 
 @ViewBuilder is a result builder in SwiftUI that lets you write multiple views inside a closure, and SwiftUI will combine them into a single view.
 It powers the declarative way you build layouts like VStack, HStack, and even your own custom views.
 
 
 */

import SwiftUI

struct ViewBuilderBootcamp: View {
    var body: some View {
        MyCustomView{
            Text("This is content")
            Text("Another line")
        }
    }
}

struct MyCustomView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack{
            Text("Header")
            content
            Text("Footer")
        }
    }
}

#Preview {
    ViewBuilderBootcamp()
}
