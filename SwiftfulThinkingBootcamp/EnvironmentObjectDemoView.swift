//
//  EnvironmentObjectDemoView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 22/03/25.
//

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
