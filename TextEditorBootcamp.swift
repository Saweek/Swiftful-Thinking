/*
    TextEditorBootcamp.swift

Same as Text Fiels just for multiple lines.
*/

import SwiftUI

struct TextEditorBootcamp: View {

    @State var textEditorText: String = "This is the starting text"
    @State var savedText: String = ""

    var body: some View {
        NavigationView {
            VStack
            {
                TextEditor(text: $textEditorText)
                    .frame(height:250)
                    .colorMultiply(Color.gray)
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("save".uppercase())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditorBootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
