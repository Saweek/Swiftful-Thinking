/*
    BindingBootcamp.swift

    We use it to connect a state variable from the parrent view to the child view.
*/

import SwiftUI

struct BindingBootcamp: View {

    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack
        {
            backgroundColor.ignoresSafeArea()

            VStack{
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
                // $ is to show that the variable is type of bonding
            }
        }
    }
}

struct ButtonView: View {

    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String

    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "New Title!!!!"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
