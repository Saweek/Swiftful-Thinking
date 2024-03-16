/*
    IconsBootcamp
*/

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart,fill")

            .resizable() // resize the image to fit the frame
            .aspectRatio(contentMode: .fill)
            /*
                Image.aspectRation()

                Overloads:
                (contentMode: ContentMode)
                (aspectRatio: CGFloat?, contentMode: ContentMode)
                (aspectRatio: CGSize, contentMode: ContentMode)

                ContantMode has 2 options:
                    .fill
                    .fit

                AspectRatio (CGFloat) - The ratio of width to height to use for the resulting view. Use nil to maintain the current aspect ratio in the resulting view.

                AspectRatio (CGSize)- A size that specifies the ratio of width to height to use for the resulting view.

                You also can you instead of aspectRation:
                    .scaleToFit()
                    .scaleToFill()
            */

            .font(.title) // change size while keeping it dynamic
            .font(.system(size: 200)) // set a custom size
            .foregroundColor(.green)
            .frame(width:300, height:300) //we resize the frame and not the image unless .resizable()
            .clipped() // cutting off everything that goes outside of the given frame

        
            .renderingMode(.original)
            /*
                Image.renderingMode(renderingMode: Image.TemplateRenderingMode?)

                If you have an image that is multicolor and you want to use multicolority, use this method.

                RenderingMode has 4 options:
                    .none
                    .original
                    .some()
                    .template

                You are allowed to color only the main part of multicolor icons. To do that choose .original as RenderingMode and AFTER set .foregroundColor or any other color methods to the color you want.
            */
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
