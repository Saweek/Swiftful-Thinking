/*
    SpacerBootcamp.swift

    Scpacer is an invisble dynamic element, that pushes the items around it as much as possible within a stack.

    Has 2 overloads:
    () — where minLength = 8-10
    (minLength: CGFloat?)
*/

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack (spacing: 0)
        {
            Spacer()
                .frame(height: 10)
                .background(Color.orange)    

            Rectangle()
                .frame(width:50, height:50)

            Spacer(min)
                .frame(height: 10)
                .background(Color.orange) 

            Rectangle()
                .frame(width:50, height:50)
                .fill(Color.red)

            Spacer()
                .frame(height: 10)
                .background(Color.orange) 
        }
        .padding(.horizontal, 200)
        // .background(Color.blue)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
