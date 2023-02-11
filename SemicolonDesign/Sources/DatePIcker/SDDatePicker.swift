import SwiftUI

public struct SDDatePicker: View {
    @Binding var text: String
    @Binding var date: Date
    @Binding var isShow: Bool

    public init(
        text: Binding<String>,
        date: Binding<Date>,
        isShow: Binding<Bool>
    ) {
        self._text = text
        self._date = date
        self._isShow = isShow
    }

    public var body: some View {
        if isShow {
            ZStack {
                SDDatePickerRepresentable(date: $date)
                    .padding(.bottom, 80)
                VStack(spacing: 0) {
                    HStack(spacing: 10) {
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                    }
                    .padding(.bottom, 40)
                    HStack(spacing: 10) {
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                    }
                }
                .padding(.bottom, 80)
                VStack {
                    Spacer()
                    HStack(spacing: 12) {
                        Button {
                            isShow = false
                        } label: {
                            Text("취소하기")
                                .frame(width: 122, height: 52)
                                .background(Color.GrayScale.gray50)
                                .cornerRadius(8)
                                .foregroundColor(.GrayScale.gray700)
                        }
                        Button {
                            text = date.toString("yyyy-MM-dd")
                        } label: {
                            Text("선택하기")
                                .frame(width: 122, height: 52)
                                .background(Color.Primary.purple400)
                                .cornerRadius(8)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.bottom, 20)
                }
            }
            .frame(width: 296, height: 300)
            .background(Color.white)
            .cornerRadius(12)
        }

    }
}

struct SDDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        SDDatePickerPreview()
    }
}
