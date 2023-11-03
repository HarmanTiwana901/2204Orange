import SwiftUI

struct StartupView: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                
                NavigationLink("", destination: SignUpView(), isActive: $isActive)
                    .opacity(0)
                    .background(NavigationLink("", destination: SignUpView(), isActive: $isActive).opacity(0))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation {
                                isActive = true
                            }
                        }
                    }
            }
        }
    }
}
@main
struct YourApp: App {
    var body: some Scene {
        WindowGroup {
            StartupView()
        }
    }
}
