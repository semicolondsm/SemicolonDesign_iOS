# SDText

SemicolonDesign의 기본 폰트
![SDText](SDText)

## Usage
기본적으로 아래와 같이 사용합니다.
```swift
Text("세미콜론 디자인")
    .sdText(type: .heading1)
```

SDText는 타입에 짜라 `textColor`를 지정하거나 폰트 컬러에 따라 `fontWeight`를 지정하기 때문에
`textColor`를 지정 하고 싶다면 아래와 같이 사용합니다.
```swift
Text("세미콜론 디자인")
    .sdText(type: .heading1, textColor: .red)
```

## Topics

### Type

- ``FontType``
