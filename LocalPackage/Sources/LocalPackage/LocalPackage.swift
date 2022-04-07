import SwiftUI

public struct SettingsView: View {
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
    }
}

public struct UserView: View {
    public init() {}

    public var body: some View {
        Text("Marco Eidinger")
            .foregroundColor(.accentColor)
    }
}
