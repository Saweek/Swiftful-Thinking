/*
    TextSelectionBootcamp.swift

Make text copyable and shareable
*/

import SwiftUI
struct TextSelectionBootcamp: View {

    var body: some View {
        Text("Hello, World!")
            .textSelection(.enabled)
    }
}

struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}