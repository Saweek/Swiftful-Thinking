/*
    GroupBootcamp.swift

to use modifiers. Pretty much selfexplainable.
*/

import SwiftUI
struct GroupBootcamp: View {

    var body: some View {
        VStack (spacing: 50)
        {
            Text("Hello Worlds")

            Group {
                Text("Hello Worlds")
                Text("Hello Worlds")
            }
        }
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}