import Inject
import SwiftUI

public struct SettingsView: View {
    @ObservedObject private var iO = Inject.observer

    public init() {}

    public var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Local Package")) {
                    HStack {
                        Text("User")
                        Spacer()
                        UserView()
                    }
                }
            }
            .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
        .enableInjection()
    }
}

public struct UserView: View {
    public init() {}

    public var body: some View {
        Text("Marco Eidinger")
            .foregroundColor(.accentColor)
    }
}
