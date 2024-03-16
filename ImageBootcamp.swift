/*
    ImageBootcamp
*/

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("therock")
            .resizable()
            // .aspectRatio(contentMode: .fit)
            // .scaleToFit()
            .scaleToFill()
            .frame(width:300, height: 200)
            // .cornerRadius(150) // adding corners
            .clipShape(
                Circle()
                // RoundedRectangle(cornerRadius:25.0)
                // Ellipse()
            )

        Image("google")
            .renderingMode(.template)
            .resizable()
            // .aspectRatio(16/9,contentMode: .fit)
            // .scaleToFit()
            .scaleToFilt()
            .frame(width:300, height: 200)
            .foregroundColor(.green)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
