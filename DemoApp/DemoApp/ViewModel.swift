import SwiftUI

class AppViewModel: ObservableObject {
    func loadStatus() {
        DispatchQueue.main.async {
            self.lastUpdated = Date().formatted(date: .omitted, time: .complete)
        }
    }

    @Published var lastUpdated: String = "N/A"
}
