import SwiftUI

struct IntroView: View {

    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        ZStack
        {
            // background
            Color.purple.ignoresSafeArea()

            // foreground
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))   
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
