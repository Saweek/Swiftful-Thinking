/*
    ButtonBootcamp.swift

Button has 4 overloads:
    (_ configuration: PrimitiveButtonStyleConfiguration)
    Creates a buttin based on a configuration for a style with a custom appearance and custom interactive begavior.

    (_ title: StringProtocol, action: {})
    Creates a button that generates its label from a string

    (action: {}, label: {})
    Creates a button that displays a custom label.

    (_ titleKey: LocalizedStringKey, action: {})
*/

import SwiftUI

struct ButtonBootcamp: View {

    @State var title: String = "Thi is my title"

    var body: some View {
        VStack (spacing:20) {
            Text(title)

            Button("Press Me!") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)

            Button(action: {
                seld.title = "Button #2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })


            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                            .
                    )
            })


            Button(action: {
                self.title = "Button #4"
            }, label: {
                text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }    
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
