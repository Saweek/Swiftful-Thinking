/*
    Gradient
*/

import SwiftUI

struct Gradient: View {
    var body: some View {
        RoundedRectangle(cornerRadius:25.0)
            .fill(
                // Color.red
                LinearGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]), //colors
                    startPoint: .topLeading, // where is the start
                    endPoint: .bottom // where is the end
                )
            )
            

            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]), //colors
                    center: .Leading, // wheere does in start
                    startRadius: 5, // how big is the radius of the first color circle
                    endRadius: 400 // how big is the radius of the last color circle
                )
            )


            .fill(
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]), //colors of the gradient
                    center: .topLeading, // where is the beginning
                    angle: .degrees(180 + 45) // where does the start pont look
                )
            )
            .frame(width:300, height: 200)
    }
}

struct Gradient_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
