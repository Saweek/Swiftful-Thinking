/*
    TextFieldBootcamp.swift

    // Place where you enter a text
*/

import SwiftUI

struct TextFieldBootcamp: View {

    @State var textFieldText: String = ""
    @State var dataArray: [String] = []

    var body: some View {
        NavigationView {
            VStack
            {
                TextField("Type somthing here", text: $textFieldText)
                // .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)

                Button(action: {
                    if textIsAproproate {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercase())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAproproate ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAproproate())

                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }

    func textIsAproproate() -> Bool {
        // check if text has what you need
        if textFieldText.count >= 3 {
            return true
        }

        return false
    }

    func saveText() {
        dataArray.appand(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
