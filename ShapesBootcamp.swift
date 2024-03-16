/*
    Shapes in SwiftUI

StrokeStyle() has:
    lindWidth: CGFloat — Width of the stroke
    lineCap: CGLineCap — The endpoint style of a line. (.butt, round, square)
    lineJoin: CGLineJoin — The join type of a line. (.miter, round, bevel)
    miterLimit: CGFloat — A threshold used to determine whether to use a bevel instead of a miter at a join.
    dash: [CGFloat] — The lengths of painted and unpainted segments used to make a dashed line.
    dashPhrase: CGFloat — How far into the dash pattern the line starts.

*/


import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color.blue) //change the color of the circle
                
                .foregroundColor(.blue) // works for basic shapes

                .stroke()
                /*
                    Shape.stroke()

                    Shows us an outline around our shape.

                    .stroke has multiple function overloadings:

                        .stroke() - gives us a solid stroke with no gradient or dash pattern

                        .stroke(content: ShapeStyle) - allows us to set a color, matirial, gradient, Hierarchical style, etc.

                        .stroke(style: StrokeStyle) — gives us ability to ad more details to the stroke

                        .stroke(content: ShapeStyle, style: StrokeStyle)

                        .stroke(lineWidth: CGFloat) — allows us to set the width of the line manually

                        .stroke(content: ShapeStyle, lineWidth: CGFloat)
                */
                

                .trim(from: 0.0, to: 1.0) // trims the shape from and to
            
            Ellipse()
                .frame(width: 200, height:100) //  sets the size of the ellipse

            Capsule()
            /*
                Capsule() has a property "style: RoundedCornerStyle" with options:
                    .continuous
                    .circular
            */


            Rectangle()

            RoundedRectangle()
            /*
                RoundedRectangle() has its own property:
                    (cornerRadius: CGFloat)
                    (cornerRadius: CGFloat, style: RoundedCornerStyle)
                    (cornerSize: CGSize) — The width and height of the rounded rectangle’s corners.
                    (cornerSize: CGSize, style: RoundedCornerStyle)
            */
                    
        }
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}