import LocalPackage
import SwiftUI

struct HomeView: View {
    @State var selection: Int = 0
    var body: some View {
        TabView(selection: $selection) {
            ContentView()
                .tabItem { Text("Left") }
                .tag(1)
            SettingsView()
                .tabItem { Text("Right") }
                .tag(2)
        }
        .environmentObject(AppViewModel())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
