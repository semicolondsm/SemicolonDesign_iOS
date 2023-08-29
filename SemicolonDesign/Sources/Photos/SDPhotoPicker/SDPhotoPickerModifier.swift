import SwiftUI

struct SDPhotoPickerModifier: ViewModifier {

    var isPresented: Binding<Bool>

    var singleSelection: Binding<UIImage>?
    var multipleSelection: Binding<[UIImage]>?

    @State var isErrorAlertPresented: Bool = false

    init(isPresented: Binding<Bool>, selection: Binding<UIImage>) {
        self.isPresented = isPresented
        self.singleSelection = selection
        self.multipleSelection = nil
    }

    init(isPresented: Binding<Bool>, selection: Binding<[UIImage]>) {
        self.isPresented = isPresented
        self.singleSelection = nil
        self.multipleSelection = selection
    }

    func body(content: Content) -> some View {
        content
            .sheet(isPresented: self.isPresented) {
                if let singleSelection {
                    SDPhotoPicker(selection: singleSelection, isErrorAlertPresented: self.$isErrorAlertPresented)
                        .accentColor(.Primary.purple400)
                        .foregroundColor(.red)
                        .tint(.green)
                } else if let multipleSelection {
                    SDPhotoPicker(selection: multipleSelection, isErrorAlertPresented: self.$isErrorAlertPresented)
                        .accentColor(.Primary.purple400)
                }
            }
            .sdOkayAlert(isPresented: self.$isErrorAlertPresented) {
                SDOkayAlert(title: "문제가 발생하였습니다", message: "형식에 맞지 않는 사진입니다.")
            }
    }
}
