import UIKit

import PhotosUI

class SDPhotoPickerCoordinator: PHPickerViewControllerDelegate {

    private let parent: SDPhotoPicker

    init(_ parent: SDPhotoPicker) {
        self.parent = parent
    }

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        self.processPhotos(results)
        picker.dismiss(animated: true)
    }

    private func processPhotos(_ pickerResults: [PHPickerResult]) {
        if self.parent.singleSelection != nil {
            self.processSinglePhoto(pickerResults)
        } else {
            self.processMultiplePhotos(pickerResults)
        }
    }

}

extension SDPhotoPickerCoordinator {

    private func processSinglePhoto(_ pickerResults: [PHPickerResult]) {
        guard let pickerResult = pickerResults.first else { return }
        print(pickerResult.itemProvider.registeredContentTypes.first)
        pickerResult.itemProvider.loadObject(ofClass: UIImage.self) { image, _ in
            if let image = image as? UIImage {
                self.parent.singleSelection?.wrappedValue = image
            } else {
                self.parent.isErrorAlertPresented.wrappedValue = true
            }
        }
    }

    private func processMultiplePhotos(_ pickerResults: [PHPickerResult]) {
        var enumeratedSelection = [(Int, UIImage)]()
        var errorCount = 0

        pickerResults.enumerated().forEach { pickerResult in
            debugPrint(pickerResult.element.itemProvider.registeredContentTypes)
            pickerResult.element.itemProvider.loadObject(ofClass: UIImage.self) { image, _ in
                if let image = image as? UIImage {
                    enumeratedSelection.append((pickerResult.offset, image))
                } else {
                    self.parent.isErrorAlertPresented.wrappedValue = true
                    errorCount += 1
                }
                if enumeratedSelection.count + errorCount == pickerResults.count {
                    self.parent.multipleSelection?.wrappedValue = enumeratedSelection
                        .sorted { $0.0 < $1.0 }
                        .map(\.1)
                }
            }
        }
    }

}
