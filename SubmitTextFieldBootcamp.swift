/*
    SubmitTextFieldBootcamp.swift
*/

import SwiftUI
struct SubmitTextFieldBootcamp: View {

    @State private var text: String = ""

    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLable(.route)
            // here you have:
                // .go
                // .return
                // .continue
                // .done
                // .join
                // .next
                // .route
                // .search
                // .send
            .onSubmit {
                print("Somthing to the console")
            }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}