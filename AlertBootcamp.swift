/*
    AlertBootcamp.swift

You can use enum and switch function to make alerts are a bit more automatic in a way.
*/

import SwiftUI

struct AlertBootcamp: View {

    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    var body: some View {
        ZStack
        {
            backgroundColor


            Button("Click here!") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                // Alert(title: Text("There was an error."))
                getAlert()
                
            })
        } 
    }

    func getAlert() -> Alert {
        return Alert(
                    title: Text("This is the title"),
                    messege: Text("Here wi will describe an error"),
                    primaryButton: .destractive(Text("DELETE"), action: {
                        backgroundColor = Color.red
                    }),
                    secondoryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
