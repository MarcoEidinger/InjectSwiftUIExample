import Inject
import LocalPackage
import SwiftUI

struct HomeView: View {
    @ObservedObject private var iO = Inject.observer
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
        .enableInjection()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
