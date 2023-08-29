import SwiftUI

struct SDPhotoPickerModifier: ViewModifier {

    var isPresented: Binding<Bool>

    var singleSelection: Binding<UIImage>?
    var multipleSelection: Binding<[UIImage]>?
    var errorAction: (() -> Void)?

    @State var isError: Bool = false

    init(isPresented: Binding<Bool>, selection: Binding<UIImage>, errorAction: (() -> Void)?) {
        self.isPresented = isPresented
        self.singleSelection = selection
        self.multipleSelection = nil
        self.errorAction = errorAction
    }

    init(isPresented: Binding<Bool>, selection: Binding<[UIImage]>, errorAction: (() -> Void)?) {
        self.isPresented = isPresented
        self.singleSelection = nil
        self.multipleSelection = selection
        self.errorAction = errorAction
    }

    func body(content: Content) -> some View {
        content
            .sheet(isPresented: self.isPresented) {
                if let singleSelection {
                    SDPhotoPicker(selection: singleSelection, isErrorAlertPresented: self.$isError)
                        .accentColor(.Primary.purple400)
                        .foregroundColor(.red)
                        .tint(.green)
                } else if let multipleSelection {
                    SDPhotoPicker(selection: multipleSelection, isErrorAlertPresented: self.$isError)
                        .accentColor(.Primary.purple400)
                }
            }
            .onChange(of: isError) { isError in
                if isError { errorAction }
            }
    }
}
