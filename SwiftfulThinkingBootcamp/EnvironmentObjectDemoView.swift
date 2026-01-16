//
//  EnvironmentObjectDemoView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 22/03/25.
//
/*
 3. What is the @EnverirmentObject and when to use?

 Ans.
 @EnvironmentObject is a property wrapper used to access shared data across multiple views in a SwiftUI application. It allows you to inject an observable object into the environment, making it available to any child view that needs to access it without having to pass it explicitly through the view hierarchy.
 
 
 🔸 When to Use @EnvironmentObject:
 1. When you need to share the same data across many views.
 2. When you want to avoid passing objects manually through each view.
 3. When using deeply nested views in a SwiftUI hierarchy.
 4. Ideal for global state like user settings, theme, or authentication info.
 
 
 Q 14. What is ObservableObject?
 Ans.
 
 ObservableObject is a protocol in SwiftUI that allows a class to publish changes to its data so that SwiftUI views automatically update when that data changes.
 
 It works with @Published properties and is mainly used for shared or external state.
 
 
 Q 15. What is @Published?
 Ans.
 
 @Published is a property wrapper from the Combine framework that automatically notifies subscribers when a property’s value changes.
 
 In SwiftUI, it is mainly used inside an ObservableObject to trigger UI updates when data changes.
 
 
 # Important Points (Interview-Focused):-

 * Belongs to Combine, not SwiftUI directly.
 * Must be used with ObservableObject.
 * Works only with class properties.
 * Emits changes before the value is set (willSet-like behavior).
 * Replaces old KVO patterns in modern SwiftUI apps.
 */

import SwiftUI

class UserData: ObservableObject {
    @Published var username = "Akhilesh Rathor"
}

struct ParantView: View {
    
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationStack {
            Text(userData.username)
            NavigationLink("Go to child screen 1", destination: Child1View())
        }
        .environmentObject(userData)
    }
}

struct Child1View: View {
    
//    @ObservedObject var userData: UserData
    
    var body: some View {
        VStack {
//            Text(userData.username)
            NavigationLink("Go to child screen 2", destination: Child2View())
        }
    }
    
}

struct Child2View: View {
    
//    @ObservedObject var userData: UserData
    
    var body: some View {
        VStack {
//            Text(userData.username)
            NavigationLink("Go to child screen 3", destination: LastView())
        }
    }
    
}

struct LastView: View {
    
//    @ObservedObject var userData : UserData
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack {
            Text(userData.username)
            Text("Last Screen")
        }
    }
}

#Preview {
    ParantView()
}
