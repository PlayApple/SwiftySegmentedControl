# SwiftySegmentedControl

![](https://img.shields.io/badge/Swift-3.0-blue.svg?style=flat)
[![Version](https://img.shields.io/cocoapods/v/SwiftySegmentedControl.svg?style=flat)](http://cocoapods.org/pods/SwiftySegmentedControl)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/SwiftySegmentedControl.svg?style=flat)](http://cocoapods.org/pods/SwiftySegmentedControl)
[![Platform](https://img.shields.io/cocoapods/p/SwiftySegmentedControl.svg?style=flat)](http://cocoapods.org/pods/SwiftySegmentedControl)

SwiftySegmentedControl is an easy to use, customizable replacement for UISegmentedControl and UISwitch written in Swift.

![Demo](https://github.com/PlayApple/SwiftySegmentedControl/raw/master/Readme/preview.gif)

## Features

- [x] Can be used as a segmented control or switch
- [x] Plethora of customizable options from colors to insets and radii
- [x] Designable straight in Interface Builder
- [x] Customizable behavior
- [x] Error handling

## Requirements

- iOS 8.0+
- Xcode 7.3+

## Installation

### CocoaPods

SwiftySegmentedControl is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

_Swift 3.0_
```ruby
pod 'SwiftySegmentedControl'
```

### Manually

If you prefer not to use CocoaPods or Carthage, you can integrate SwiftySegmentedControl into your project manually.

## Usage

```swift
let control = SwiftySegmentedControl(
frame: CGRect(x: 0.0, y: 100.0, width: view.bounds.width, height: 44.0),
titles: ["One", "Two", "Three"],
index: 1,
backgroundColor: UIColor(red:0.11, green:0.12, blue:0.13, alpha:1.00),
titleColor: .white,
indicatorViewBackgroundColor: UIColor(red:0.55, green:0.26, blue:0.86, alpha:1.00),
selectedTitleColor: .black)
control.titleFont = UIFont(name: "HelveticaNeue", size: 14.0)!
control.selectedTitleFont = UIFont(name: "HelveticaNeue-Medium", size: 14.0)!
control.addTarget(self, action: #selector(ViewController.controlValueChanged(_:)), for: .valueChanged)
view.addSubview(control)
```
You can find different ways of using it (such as by designing it in a Storyboard file) in the example project. To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Todos

- [ ] Make initializer throwing if not enough titles are passed.
- [ ] Set titles via method that throws.
- [ ] Allow the control to have no selected index.
- [ ] Allow UIViews that implement a protocol to be used as options.
- [ ] Add moar tests!
- [ ] ~~Try to take over the world!~~ Uh, what?

## Contribution

Feel free to Fork, submit Pull Requests or send me your feedback and suggestions! Please make sure that tests are passing before submitting a new Pull Request.

## Author

Fork from George Marmaridis
- https://github.com/gmarm/BetterSegmentedControl
- https://github.com/gmarm
- https://twitter.com/gmarmas
- https://www.linkedin.com/in/gmarm
- gmarmas@gmail.com

## License

SwiftySegmentedControl is available under the MIT license. See the LICENSE file for more info.
