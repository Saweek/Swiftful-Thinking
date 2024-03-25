import SwiftUI

// Materials
// basicly, it just make stuff blured
// iOS 15.0+, macOS 12.0+

struct BackgroundMaterialsBootcamp: View {

    var body: some View {
        VStack
        {
            Spacer()

            VStack {
                RoundedRectangle(cornerRadius:4)
                    .frame(width:50, height:4)
                    .padding()
                Spacer()
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(.thinmaterial)
            .cornerRadius(30)
        }
        .ignnoresSafeArea()
        .backgroundImage("therock")
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
