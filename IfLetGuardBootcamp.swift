/*
    IfLetGuardBootcamp.swift
*/

import SwiftUI

struct IfLetGuardBootcamp: View {

    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserId: String? = nil 
    var body: some View {
        NavigationView {
            VStack
            {
                Text("Here we are practicing save coding")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }

                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Save Coding")
            .onAppear {
                loadData()
            }
        }
    }

    func loadData()  {

        if let userID = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadlind: now() + 3) {
                displayText = "This is the new data. \(userID)"
                isLoading = false
            }
        } else {
            
        }
    }


    func loadData2()  {

        guard let usedID = currentUserId else {
            displayText = "ERROR! there is no userID."
            return
        }

        // if userID has a value the code below will execute
        isLoading = true
        DispatchQueue.main.asyncAfter(deadlind: now() + 3) {
            displayText = "This is the new data. \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
