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
    }
}

public struct UserView: View {
    public init() {}

    public var body: some View {
        Text("Marco Eidinger")
            .foregroundColor(.accentColor)
    }
}
