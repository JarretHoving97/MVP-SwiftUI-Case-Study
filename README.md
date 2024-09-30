## A Study Case How MVP can be applied in the SwiftUI Framework 

### The Challenge
With SwiftUI, you'll get UI binding for free. However, updating changes in SwiftUI is usually be done with an `ObservableObject` so the `View` can update UI on value changes (Binding) from the
`ObservableObject` which is often used as ViewModel in the MVVM pattern.

You can safely say with this approach. Apple has MVVM pattern in mind by creating SwiftUI. Even if you try to implement MVC. You'll end up using MVVM because SwiftUI view updates ony listens to observations.
I thought the same would be for MVP. So that the ViewModel/Controller can also be the presenter. But traditionally the dependency between the Presenter and the View is inverted. (The Presenter holds a reference to the view instead of the View holding a reference to the presenter). This is what makes MVP different from MVC and MVVM in my opinion. 

Like I said, updating UI is normally done in SwiftUI in the ViewModel. That's why this Case Study is made to get to a solution for SwiftUI.


## More benifits using MVP instad of MVC, MVVM
With MVP, you'll can create a reusable cross-platform presentation layer. Which separates the presentation logic from the view and or ViewModel/Controller, by giving data to the ViewModel/Controller where the binding happens right now. So the ViewModel/Controller is only used for updating the view.
