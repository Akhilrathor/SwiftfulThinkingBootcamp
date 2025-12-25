//
//  CombineBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 16/08/25.
//
/*
 9. How to bind the data to SwiftUI by using the Combine Framework?
 10. What is the Combine framework ?
 11. What is the Subscriber and Publisher in Combine?
 
 Ans.
 
 Combine is Apple’s reactive programming framework for Swift, introduced at WWDC 2019. It provides a declarative API to handle asynchronous events such as API calls, UI updates, or notifications. Instead of using delegates or callbacks, it uses publishers to emit values and subscribers to react to those values.
 
 Benefits:-
    # Better management of async code → eliminates the need for delegates, callbacks, or escaping closures.
 
    # Powerful data transformation → allows chaining of operations (map, filter, debounce, etc.) for cleaner and more readable code.
 
 1. Publisher:-
 # A Publisher is a type that can emit a sequence of values over time.
 # It defines the type of values (Output) it can send and the type of errors (Failure) it might encounter.
 # Publishers are the source of data in Combine.
 # Examples include Built-in Publishers like Just, Future, Timer, and NotificationCenter, along with custom publishers you can create.
 
 2. Subscriber:-
 # A Subscriber is a type that listens to and reacts to the values emitted by a Publisher.
 # It defines what to do with the received values, errors, or completion events.
 # Subscribers are the destination of the data flow in Combine.
 # Combine provides built-in subscribers like sink and assign, which can handle values with closures or assign them to object properties, respectively.
 # You can also create custom Subscribers by conforming to the Subscriber protocol to gain fine-grained control over the data flow, including backpressure management (controlling how much data is requested at a time)
 */

import SwiftUI
import Combine

struct CombineBootcamp: View {
    
    @State private var cancellable: AnyCancellable?  // store subscription
    var body: some View {
        Text("Check console for even numbers")
            .onAppear {   // ✅ this is on the Text view, not on View type
                let numbers = [1,2,3,4,5,6,7,8,9]
//                let evenNumbers = filterEvenNumbers(arr: numbers)
//                print(evenNumbers) // prints [2,4,6,8]
                
                cancellable =  numbers.publisher
                    .filter { $0 % 2 == 0}
                    .collect()
                    .sink{ result in
                        print("result from combine example = \(result)")
                    }
                    
            }
    }
    
    func filterEvenNumbers(arr:[Int]) -> [Int] {
        var result = [Int]()
        for number in arr {
            if number % 2 == 0 {
                result.append(number)
            }
        }
        return result
    }
}

#Preview {
    CombineBootcamp()
}
