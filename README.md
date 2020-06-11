# RxCyclone

[![CI Status](https://img.shields.io/travis/lyzkov/RxCyclone.svg?style=flat)](https://travis-ci.org/lyzkov/RxCyclone)
[![Version](https://img.shields.io/cocoapods/v/RxCyclone.svg?style=flat)](https://cocoapods.org/pods/RxCyclone)
[![License](https://img.shields.io/cocoapods/l/RxCyclone.svg?style=flat)](https://cocoapods.org/pods/RxCyclone)
[![Platform](https://img.shields.io/cocoapods/p/RxCyclone.svg?style=flat)](https://cocoapods.org/pods/RxCyclone)

## Example

To run the example project, just open Example directory.

## Requirements

## Installation

### Swift Package Manager

Add this repo URL as a package dependency.

```swift
// swift-tools-version:5.2

import PackageDescription

let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/lyzkov/RxStorm.git", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "Your target",
            dependencies: ["RxStorm"]),
        )
    ],
    ...
)
```
### Cocoapods

RxStorm is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RxCyclone'
```

## Author

lyzkov, lyzkov@gmail.com

## License

RxCyclone is available under the MIT license. See the LICENSE file for more info.
