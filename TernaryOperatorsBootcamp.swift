/*
    TernaryOperatorsBootcamp.swift

    faster way of writing if-else conditions
*/

import SwiftUI

struct TernaryOperatorsBootcamp: View {

    @State private var isStartingState: Bool = false

    var body: some View {
        VStack
        {
            Button("Button: \(isStartingState,description)") {
                isStartingState.toggle()
            }

            Text(isStartingState ? "Starting State" : "Ending State            ")

            RoundedRectangle(cornerRadius:25)
                .fill(isStartingState ? Color.red : Color.blue)
                //variable ? true : false

                .frame(width:200, height:100)

            Sapcer()
        }
    }
}

struct TernaryOperatorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorsBootcamp()
    }
}
