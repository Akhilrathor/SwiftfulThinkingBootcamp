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

3. How does SwiftUI know when to update a view?

Answer:
SwiftUI updates a view whenever observed state changes—it uses a reactive, declarative paradigm where views are functions of state, and the framework automatically invalidates and recomputes the view hierarchy when @State, @ObservedObject, @StateObject, or @EnvironmentObject values mutate.

Example
struct CounterView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("Count: \(count)")
            Button("Add") {
                count += 1   // Triggers UI update
            }
        }
    }
}
Changing count causes SwiftUI to:
* Invalidate the view
* Recalculate body
* Update only the Text

4. What is NavigationStack?

Answer:
NavigationStack is used for navigation in SwiftUI and replaces NavigationView.

Example:

NavigationStack {
    NavigationLink("Next", value: 1)
}

5. Difference between NavigationView and NavigationStack?

Answer:
NavigationStack is more powerful, supports programmatic navigation and deep linking.

Example:

@State var path = NavigationPath()

6. What is .onAppear?

Answer:
.onAppear runs code when the view appears on screen.

Example:

.onAppear {
    fetchData()
}

7. Difference between .onAppear and .task?

Answer:
.task is async-friendly and cancels automatically when view disappears.

Example:

.task {
    await loadData()
}

8. What is AnyView?

Answer:
AnyView erases view type but hurts performance and should be avoided if possible.

Example:

AnyView(Text("Hello"))

9. What is LazyVStack and why use it?

Answer:
LazyVStack loads views only when needed, improving performance.

Example:

LazyVStack {
    ForEach(items) { item in
        Text(item.name)
    }
}

10. Difference between VStack and LazyVStack?

Answer:
VStack loads all views at once, LazyVStack loads views on demand.

11. What is ForEach?

Answer:
ForEach is used to create multiple views from a collection.

Example:

ForEach(users, id: \.id) {
    Text($0.name)
}

12. What is Identifiable?

Answer:
Identifiable provides a unique id for SwiftUI diffing.

Example:

struct User: Identifiable {
    let id = UUID()
}

13. What is .sheet?

Answer:
.sheet presents a modal screen.

Example:

.sheet(isPresented: $show) {
    DetailView()
}

14. What is .fullScreenCover?

Answer:
Used to present a full-screen modal.

Example:

.fullScreenCover(isPresented: $show) {
    LoginView()
}

15. What is .alert?

Answer:
Displays an alert to the user.

Example:

.alert("Error", isPresented: $showError) {
    Button("OK") { }
}

16. What is .overlay?

Answer:
Adds a view on top of another view.

Example:

Text("Hello")
    .overlay(Circle().stroke())

17. What is .background?

Answer:
Adds a background behind a view.

Example:

Text("Hi")
    .background(Color.yellow)

18. What is .frame?

Answer:
Defines size of a view.

Example:

.frame(width: 100, height: 50)

19. What is .animation and withAnimation?

Answer:
Used to animate state changes.

Example:

withAnimation {
    isOn.toggle()
}

20. What is @FocusState?

Answer:
Used to manage keyboard focus.

Example:

@FocusState var isFocused: Bool

21. What is .redacted?

Answer:
Used to show placeholder UI during loading.

Example:

.redacted(reason: .placeholder)

22. How to handle dark mode in SwiftUI?

Answer:
SwiftUI automatically supports dark mode using system colors.

Example:

Color.primary

23. What is PreviewProvider?

Answer:
Used to preview SwiftUI views in Xcode.

Example:

#Preview {
    ContentView()
}

24. How do you pass data backward in SwiftUI?

Answer:
By using @Binding or closures.

Example:

@Binding var text: String

25. What is PreferenceKey?

Answer:
Used to pass data from child view to parent view.

Example:

struct HeightKey: PreferenceKey { }
