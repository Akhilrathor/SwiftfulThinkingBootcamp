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
