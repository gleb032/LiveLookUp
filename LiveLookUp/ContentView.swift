import SwiftUI
import IdentityLookup

struct ContentView: View {
    var body: some View {
        VStack {
            button("Open Settings") {
                Task {
                    do {
                        try await LiveCallerIDLookupManager.shared.openSettings()
                    } catch {
                        print(error)
                    }
                }
            }
            button("Check Status") {
                let status = LiveCallerIDLookupManager.shared.status(
                    forExtensionWithIdentifier: extensionIdentifier
                )
                print(status)
            }
        }
    }
    
    private func button(_ title: String, action: @escaping () -> Void) -> some View {
        Button(
            action: action,
            label: {
                Text(title)
                    .foregroundColor(.white)
            }
        )
        .padding(10)
        .background(.gray.opacity(0.5))
        .cornerRadius(10)

    }
}

private let extensionIdentifier = "..."

#Preview {
    ContentView()
}
