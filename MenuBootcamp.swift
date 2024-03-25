/*
    MenuBootcamp.swift
*/

import SwiftUI
struct MenuBootcamp: View {

    var body: some View {
        Menu("Click Me") {
            Button("One") {
                
            }

            Button("two") {

            }
        }
        .menuStyle(BorderedButtonMenuStyle())
        // BorderedButtonMenuStyle
        // BorderlessButtonMenuStyle
        // ButtonMenuStyle
        // DefaultMenuStyle
    }
}

struct MenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MenuBootcamp()
    }
}