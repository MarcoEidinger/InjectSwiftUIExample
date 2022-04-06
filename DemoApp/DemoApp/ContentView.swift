import LocalPackage
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: AppViewModel
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Navigate to view from local package")) {
                    NavigationLink("User", destination: UserView())
                }
                Section(header: Text("on Appear")) {
                    HStack {
                        Text("Date")
                        Spacer()
                        Text(model.lastUpdated)
                    }
                }
            }
            .navigationTitle("Demo App")
        }
        .onAppear {
            self.model.loadStatus()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
