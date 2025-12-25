//
//  StateObservedBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 02/08/25.
//

/*
 2. What is the @StateObject and when to use?
 5. What is the @ObservedObject?
 Ans.
 
 In SwiftUI @StateObject and @ObservedObject are both used to manage observable objects, but they behave differently in terms of lifecycle and ownership:
 
 1. @StateObject (recommended for creating ViewModel)
  * The view owns and manages the lifecycle of the object.
  * The instance persists even when the view is recreated.
  * Ideal for creating a new ViewModel inside a view.
 
 2. @ObservedObject (For injecting existing viewmodel)
  * The view does not own the object; it relies on an external source.
  * If the view is recreated, a new instance is not created — it uses what was passed in.
  * Ideal for passing an already created ViewModel from a parent view.
 
 
 🎤 Interview One-Liner:
 "@StateObject in SwiftUI is used to create and own an observable reference type within a view. It's ideal for managing a view model's lifecycle and ensuring the view re-renders when data changes."
 
 "@ObservedObject is used in SwiftUI when a view needs to observe an external observable object, like a ViewModel passed from a parent, without owning its lifecycle."
 
 
When to Use @StateObject:
When the view creates the object for the first time
When the view should be responsible for managing the object’s memory
Typically used in parent/root views
 
 
 */

import SwiftUI

class CounterModel: ObservableObject {
    @Published var count: Int = 0
    
    init() {
        print("init is calling!!")
    }
    
    func increament() {
        count += 1
    }
}

struct StateObservedBootcamp: View {
    @ObservedObject var vm = CounterModel()
//    @StateObject var vm = CounterModel()
    
    var body: some View {
        VStack(spacing: 16){
            Text("Count is: \(vm.count)")
            Button("Increament"){
                vm.count += 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct RandomNumberIncreament: View {
    @State var number: Int = 0
    
    var body: some View {
        VStack(spacing: 20){
            Text("Random number: \(number)")
            
            Button("Random Number Generation") {
                number = (0...1000).randomElement() ?? 0
            }
            
            StateObservedBootcamp()
        }
        
    }
}

#Preview {
    RandomNumberIncreament()
}
