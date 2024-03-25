/*
    AnyLayoutBootcamp.swift
*/

import SwiftUI
struct AnyLayoutBootcamp: View {

    @Environment(\.horizontalSizeClass) privar var horizontalSizeClass
    @Environment(\.verticalSizeClass) privar var verticalSizeClass

    var body: some View {
        VStack (spacing: 12)
        {
            Text("Horizonatl: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")

            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
        }
    }
}

struct AnyLayoutBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnyLayoutBootcamp()
    }
}