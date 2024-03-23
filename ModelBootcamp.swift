/*
    ModelBootcamp.swift

We create custom model(data type)
*/

import SwiftUI

struct UserModel: Identifiable { // to make it identifiable in Foreach loop
    let id: String = UUID().uuidString // to make it foundable
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {

    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "123", followerCount: 100, isVerified: true)
        UserModel(displayName: "Emily", userName: "itsemely", followerCount: 55, isVerified: false)
        UserModel(displayName: "Samantha", userName: "ninja", followerCount: 350, isVerified: false)
        UserModel(displayName: "Chris", userName: "chrish2009", followerCount: 99, isVerified: true)
    ]
    var body: some View {
        NavigationView {
            List {

                // we are not going to use this one because of the error
                ForEach(users, id: \.self) { name in

                }

                // instead we are goint to use ForEach another overload
                // (data: _, content: {})
                ForEach(users) { user in
                    HStack (spacing: 15)
                    {
                        Circle()
                            .frame(width:35, height:35)

                        VStack (alignment: .leading)
                        {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundColor(.secondary)
                                .font(.caption)
                        }
                        Spacer()
                        If user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack
                        {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.secondary)
                                .font(.caption)    
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGrouppedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
