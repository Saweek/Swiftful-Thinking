/*
    Colors
https://developer.apple.com/documentation/swiftui/color

Color overloads:
    (cgColor: CGColor)
    (name: String)
    (color: UIColor)
    (String, bundle: Bundle?)
    (hue: Double, saturation: Double, brightness: Double, opacity: Double)
    ()
*/

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius:25.0)
            .fill(Color.red) // makes our recnatngle red
            .fill(
                Color( // Class that returns Color
                    #colorLiteral( // a way to chose your own color and not a pre-saved
                        red: 0, 
                        green: 0.3285208941, 
                        blue: 0.5748849511, 
                        alpha: 1
                    )
                )
            )
            .frame(width:300, height:200)
            
            .shadow(radius: 10)
            /*
                Shadow()
                
                Basiclly giev us ability to add shadow.
                It has two overloads:
                    (radius: CGFloat)
                    (color: Color, color: CGFloat, x: CGFloat, y:CGFloat)
            */
    }
}

struct ColorsBootcamp _Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
