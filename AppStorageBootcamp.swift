/*
    AppStorageBootcamp.swift
*/

import SwiftUI

struct AppStorageBootcamp: View {

    // @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?

    var body: some View {
        VStack(spacing: 20)
        {
            Text(currentUserName ?? "Add Name Here")
            // see "if let guard" for more

            Button("Save".uppercased()) {
                let name: String = "Emily"
                currentUserName = name
                // UserDefaults.standard.set(name, forKey: "name")
            }
        }
        // this is the way how you would do that in UIKit
        // .onAppear {
        //     currentUserName = UserDefaults.standard.string(forKey: "name")
        // }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
