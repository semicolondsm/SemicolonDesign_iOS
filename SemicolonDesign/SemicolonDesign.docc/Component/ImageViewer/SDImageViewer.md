# ``SemicolonDesign/SDImageViewer``

![SDImageViewer](SDImageViewer)

## Usage

```swift
struct AnyView: View {

    @State var present = false

    var body: some View {
        VStack {
            Button(action: {
                present = true
            }, label: {
                Text("Show ImageViewer")
            })
        }
        .sdImageView(
            isPresented: self.$present,
            images: [
                URL(string: "https://i.pinimg.com/originals/1d/25/28/1d2528b6e70d40a68c1d956cfe375e45.jpg")!,
                URL(string: "https://fitnish.com/wp-content/uploads/2022/03/82886176_3103409266549936_7191193382985662464_n.jpg")!
            ]
        )
    }

}
```

## Topics

### <!--@START_MENU_TOKEN@-->Group<!--@END_MENU_TOKEN@-->

- <!--@START_MENU_TOKEN@-->``Symbol``<!--@END_MENU_TOKEN@-->
