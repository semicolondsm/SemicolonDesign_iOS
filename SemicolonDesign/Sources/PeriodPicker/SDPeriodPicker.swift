import SwiftUI

struct SDPeriodPicker: View {
    @Binding var period: Int?
    @Binding var currentPeriod: Int?
    @Binding var isShow: Bool

    var body: some View {
        if isShow {
            ZStack {
                SDPeriodPickerRepresentable(
                    defaultPeriod: $period,
                    period: $currentPeriod
                )
                    .padding(.bottom, 80)
                VStack(spacing: 0) {
                    Color.Primary.purple400
                        .frame(width: 120, height: 2)
                        .cornerRadius(2)
                        .padding(.bottom, 40)
                    Color.Primary.purple400
                        .frame(width: 120, height: 2)
                        .cornerRadius(2)
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
                            period = currentPeriod ?? 1
                            isShow = false
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

struct SDPeriodPicker_Previews: PreviewProvider {
    static var previews: some View {
        SDPeriodPickerPreview()
    }
}
