## A Study Case How MVP can be applied in the SwiftUI Framework 

### The Challenge
With SwiftUI, you'll get UI binding for free. However, updating changes in SwiftUI is usually be done with an `ObservableObject` that is usually the view's `viewModel`.
Traditionally. Business logic is done in the `ViewModel` on the MVVM pattern.

So to make UI changes work. The presenter should talk to the `ObservableObject` of the view that is 
