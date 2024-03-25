import SwiftUI

struct ProfileView: View {

    // For AppStorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.sircle.fill")
                .resizable()
                .scaleToFit()
                .frame(width:1500, height:150)

            Text(currentUserName!)
            Text("This user is \(currentUserAge!) y.o.")
            Text("Their gender is \(currentUserGender!)")

            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }

    func signOut() {
        withAnimation(.spring()) {
            currentUserName = nil
            currentUserAge = nil
            currentUserGender = nil
            currentUserSignedIn = false 
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
