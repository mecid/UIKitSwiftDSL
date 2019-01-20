# UIKitSwiftDSL

[![Version](https://img.shields.io/cocoapods/v/UIKitSwiftDSL.svg?style=flat)](https://cocoapods.org/pods/UIKitSwiftDSL)
[![License](https://img.shields.io/cocoapods/l/UIKitSwiftDSL.svg?style=flat)](https://cocoapods.org/pods/UIKitSwiftDSL)
[![Platform](https://img.shields.io/cocoapods/p/UIKitSwiftDSL.svg?style=flat)](https://cocoapods.org/pods/UIKitSwiftDSL)

Swift DSL for UIKit. Simple DSL in Swift which gives you opportunity to write layout code in declarative way.

## Usage

```swift
stack {
    $0.axis = .vertical
    $0.isLayoutMarginsRelativeArrangement = true

    $0.stack {
        $0.axis = .horizontal

        $0.label {
            $0.textColor = .white
            $0.text = "Hello"
        }

        $0.label {
            $0.textColor = .white
            $0.text = "World"
        }

        $0.label {
            $0.textColor = .white
            $0.text = "!!!"
        }
    }

    $0.button {
        $0.tintColor = .white
        $0.setTitle("Say Hi!", for: .normal)
    }

    $0.view {
        $0.backgroundColor = .clear
    }
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

## Author

Majid Jabrayilov, cmecid@gmail.com

## License

UIKitSwiftDSL is available under the MIT license. See the LICENSE file for more info.
