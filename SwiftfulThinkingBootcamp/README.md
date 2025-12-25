# All Questions


1. What is the @State and @Binding and when to use these?
2. What is the @StateObject and when to use?
3. What is the @EnverirmentObject and when to use?
4. What are the modifiers in SwiftUI?
5. What is the @ObservedObject?
6. What is the difference between @StateObject and @ObservedObject?
7. What is the ViewBuider?
8. What is the GeomatriReader and what is the use?
9. How to bind the data to SwiftUI by using the Combine Framework?
10. What is the Combine framework ?
11. What is the Subscriber and Publisher in Combine?
12. What benefits gives the SwiftUI than storyboard?
Ans.
SwiftUI is a declarative UI framework, which means we describe what the UI should look like, and SwiftUI takes care of updating it automatically. Unlike Storyboards, SwiftUI code is lightweight, reusable, and easier to maintain. It also provides real-time previews, better integration with Combine for reactive updates, and supports cross-platform development (iOS, iPadOS, macOS, watchOS, tvOS) with the same code.

✅ Key Benefits of SwiftUI Over Storyboard

* Declarative & Clean → Less boilerplate, layout + logic in Swift code.
* Live Preview → Instant UI feedback while coding.
* Reusable Components → Easy to build modular, reusable views.
* Better Source Control → No XML conflicts, smooth collaboration.
* Cross-Platform → Single codebase for iOS, macOS, watchOS, tvOS.
* Simple Animations → Built-in APIs for smooth animations with minimal code.
* Reactive Binding → UI auto-updates with data changes (@State, @Binding).
* Scalable & Maintainable → Easier to extend and manage large apps.
* Adaptive Layouts → Handles multiple devices & screen sizes naturally.

13. What is the ZStack and what is the use ?
Ans. ZStack is a SwiftUI container that overlays its child views on top of each other along the z-axis (front to back). The first view is placed at the back, and subsequent views are stacked on top.

🔹 Example:
ZStack {
    Image("background")   // back layer
    Text("Hello, SwiftUI!") // on top
        .font(.title)
        .foregroundColor(.white)
}

