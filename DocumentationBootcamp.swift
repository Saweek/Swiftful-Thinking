/*
    DocumentationBootcamp.swift
*/

import SwiftUI

struct DocumentationBootcamp: View 

    // MAEK: PROPERTIES

    @State var data: [String] = ["Apples", "Oranges", "Bananas"]
    @State var showAlert: Bool = false

    // MARK: BODY

    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline) 
                }
            }
            .navigationTitle("Documentation")
            .navigationBarItems(trailing:
                Button("ALERT") {
                    showAlert.toggle()
                }
            )
            .alert(isPresented: showAlert, content: {
                getAlert(text: "This is the alert!")
            })
        }
    }

    // MARK: FUNCTIONS

    /// Gets an alert with a specified title,
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ‘‘‘
    /// getAlert(text: "Hi") -> Alert(title: Text ("Hi"))
    /// ’’’
    ///
    /// Warning: There is no additional message in this Alert.
    /// Parameter text: This is the title for the alert.
    /// Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }


    // MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
