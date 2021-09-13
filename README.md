# SemicolonDesign_iOS
Semicolon;에서 개발한 교내 프로젝트 전용 디자인 시스템입니다.


### [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)
```ruby
# Podfile
use_frameworks!

target 'YOUR_TARGET_NAME' do
    pod 'SemicolonDesign', '0.3.3'
end
```
Replace `YOUR_TARGET_NAME` and then, in the `Podfile` directory, type:
```
$ pod install
```

### [Swift Package Manager](https://github.com/apple/swift-package-manager)
```swift
// Package.swift

dependencies: [
    .package(url: "https://github.com/semicolonDSM/SemicolonDesign_iOS.git", from: "0.3.3")
]
```
