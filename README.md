# UIKitSwiftDSL

[![Version](https://img.shields.io/cocoapods/v/UIKitSwiftDSL.svg?style=flat)](https://cocoapods.org/pods/UIKitSwiftDSL)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/UIKitSwiftDSL.svg?style=flat)](https://cocoapods.org/pods/UIKitSwiftDSL)
[![Platform](https://img.shields.io/cocoapods/p/UIKitSwiftDSL.svg?style=flat)](https://cocoapods.org/pods/UIKitSwiftDSL)

Swift DSL for UIKit. Simple DSL in Swift which gives you opportunity to write layout code in readable and declarative way.

## Usage

```swift
let rootView = stack {
    $0.spacing = 16
    $0.axis = .vertical
    $0.isLayoutMarginsRelativeArrangement = true

    $0.stack {
        $0.distribution = .fillEqually
        $0.axis = .horizontal

        $0.label {
            $0.textAlignment = .center
            $0.textColor = .white
            $0.text = "Hello"
        }

        $0.label {
            $0.textAlignment = .center
            $0.textColor = .white
            $0.text = "World"
        }

        $0.customLabel {
            $0.textAlignment = .center
            $0.textColor = .white
            $0.text = "!!!"
        }
    }

    let messageButton = $0.button {
        $0.tintColor = .white
        $0.setTitle("Say Hi!", for: .normal)
    }

    $0.view {
        $0.backgroundColor = .clear
    }
}
```

## Custom View
If you are using some Custom Views in your project you can easily add it to support DSL.

```swift
import UIKitSwiftDSL

class CustomLabel: UILabel {
// Custom implementation here
}

extension UIView {
    @discardableResult
    func customLabel(apply closure: (CustomLabel) -> Void) -> CustomLabel {
        return custom(CustomLabel(), apply: closure)
    }
}
```

## AutoLayout
UIKitSwiftDSL doesn't have any logic related to AutoLayout. You can use any library you want.

```swift
$0.button {
    $0.tintColor = .white
    $0.setTitle("Say Hi!", for: .normal)
    
    // Add your AutoLayout code here.
}
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

UIKitSwiftDSL is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UIKitSwiftDSL'
```

UIKitSwiftDSL is available through [Carthage](https://github.com/Carthage/Carthage). To install
it, simply add the following line to your Cartfile:

```ruby
github "mecid/UIKitSwiftDSL"
```

## Author

Majid Jabrayilov, cmecid@gmail.com

## License

UIKitSwiftDSL is available under the MIT license. See the LICENSE file for more info.
