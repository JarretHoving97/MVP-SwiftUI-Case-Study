# A Study Case How MVP can be applied in the SwiftUI Framework 

With SwiftUI, you'll get UI binding for free. However, updating changes in SwiftUI is usually be done with an `ObservableObject` so the `View` can update UI on value changes (Binding) from the
`ObservableObject` which is often used as ViewModel in the MVVM pattern.

You can safely say that Apple had MVVM pattern in mind by creating SwiftUI. Also by the fact that the SwiftUI's `View` is a [Value type intead of a reference types](https://www.hackingwithswift.com/books/ios-swiftui/why-does-swiftui-use-structs-for-views). so that mutations for SwiftUI's `View` must depend on a reference type. 


At first I thought the same would be for MVP. So that the ViewModel/Controller can also be the presenter. But traditionally the dependency between the Presenter and the View is inverted. (The Presenter holds a reference to the view instead of the View holding a reference to the presenter). This is what makes MVP different from MVC and MVVM in my opinion. 

Like I said, updating UI is normally done in SwiftUI in the ViewModel. That's why this Case Study is made to get to a neat solution for SwiftUI.

## Why using MVP over MVVM? 
I do not believe there is such thing as a 'perfect' architecture. MVC, MVVM, MVP and (many) more architectures can be usefull on it's own and it should depend on Requirements and Company Policy which to use. 
MVP can be platform-agnostic. So you can reuse the presetation logic in other platforms. 

TBA
