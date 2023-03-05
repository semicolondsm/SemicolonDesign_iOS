import SwiftUI

struct SDTimePicker: View {
    @State var date: Date = Date()
    @State var currentDate: Date = Date()
    @Binding var currentTime: String
    @Binding var time: String
    @Binding var isPresented: Bool

    init(
        currentTime: Binding<String>,
        time: Binding<String>,
        isPresented: Binding<Bool>
    ) {
        self._currentTime = currentTime
        self._time = time
        self._isPresented = isPresented
    }

    var body: some View {
        if isPresented {
            ZStack {
                SDTimePickerRepresentable(date: $date, currentDate: $currentDate)
                    .padding(.bottom, 80)
                VStack {
                    HStack(spacing: 30) {
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                            .cornerRadius(2)
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                            .cornerRadius(2)
                    }
                    .padding(.bottom, 30)
                    HStack(spacing: 30) {
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                            .cornerRadius(2)
                        Color.Primary.purple400
                            .frame(width: 60, height: 2)
                            .cornerRadius(2)
                    }
                }
                .padding(.bottom, 80)
                VStack {
                    Spacer()
                    HStack(spacing: 12) {
                        Button {
                            isPresented = false
                        } label: {
                            Text("취소하기")
                                .frame(width: 122, height: 52)
                                .background(Color.GrayScale.gray50)
                                .cornerRadius(8)
                                .foregroundColor(.GrayScale.gray700)
                        }
                        Button {
                            time = date.toString("HH:mm")
                            currentTime = currentDate.toString("HH:mm")
                            isPresented = false
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
            .frame(height: 300)
            .background(Color.white)
            .cornerRadius(12)
        }
    }
}

struct SDTimePicer_Previews: PreviewProvider {
    static var previews: some View {
        SDTimePickerPreview()
    }
}
