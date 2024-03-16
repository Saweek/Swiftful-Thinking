/*
    ScrollViewBootcamp.swift


Has 2 overloads:
    (content:)
    (_ axes: Axis.Set, showIndicators: Bool, content:)

Axis.Set cound be:
    .vertical
    .horizontal
*/

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            VStack
            {
                ForEach(0..<10) { index in
                    ScrollVie (.horizontal, showIndicators: false) {
                        HStack
                        {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius:25.0)
                                    .frame(width: 200, height: 150)
                                    .fill(Color.white)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
