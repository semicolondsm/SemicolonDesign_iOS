import SwiftUI

struct SmallButtonPreview: View {

    let buttonTypes: [SmallButtonType] = [
        .defaultWithoutBackground,
        .colorWithoutBackground,
        .link,
        .default,
        .color,
        .lightColor,
        .defaultWithBorder
    ]
    let icon = Image.init(systemName: "square.split.diagonal.2x2")

    var body: some View {
        return VStack {
            ForEach(buttonTypes, id: \.self) { type in
                HStack {
                    SmallButton(
                        isLoading: .constant(false),
                        isDisabled: .constant(false),
                        text: "버튼",
                        action: {  },
                        icon: .none,
                        type: type
                    )
                    SmallButton(
                        isLoading: .constant(false),
                        isDisabled: .constant(true),
                        text: "버튼",
                        action: {  },
                        icon: .none,
                        type: type
                    )
                    SmallButton(
                        isLoading: .constant(false),
                        isDisabled: .constant(false),
                        text: "버튼",
                        action: {  },
                        icon: .none,
                        type: type
                    )
                    SmallButton(
                        isLoading: .constant(false),
                        isDisabled: .constant(false),
                        text: "버튼",
                        action: {  },
                        icon: .leftIcon(image: icon),
                        type: type
                    )
                    SmallButton(
                        isLoading: .constant(false),
                        isDisabled: .constant(false),
                        text: "버튼",
                        action: {  },
                        icon: .rightIcon(image: icon),
                        type: type
                    )
                    switch type {
                    case .default, .color, .lightColor, .defaultWithBorder:
                        SmallButton(
                            isLoading: .constant(true),
                            isDisabled: .constant(false),
                            text: "버튼",
                            action: {  },
                            icon: .none,
                            type: type
                        )
                    default: EmptyView()
                    }
                }
            }
        }
    }
}
