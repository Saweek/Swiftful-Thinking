/*
    ToggleBootcamp.swift
*/

import SwiftUI

struct ToggleBootcamp: View {

    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {

            HStack
            {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
             
            Toggle(
                isOn: $toggleIsOn, 
                label: {
                    Text("Chage Status")
                }
            )
            .toggleStyle(SwitchToggleStyle(tint: Color.red))

            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
