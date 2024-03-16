/*
    VHZStacksBootcamp.swift

VStack -> Vertical
HStack -> Horisontal
ZStack -> Z-index stack

Every stack has 2 overloads:
    (content:)
    (alignment: ...Alignment, spacing: CGFloat?, content:)

VStack has only horizontal alignment:
    .leading
    .trailing

HStack has only vertical alignment:
    .top
    .bottom

ZStack has all the possible alignments

Only ZStack doesn't have spacing.
*/

import SwiftUI

struct VHZStacksBootcamp: View {
    VStack -> Vertical
    HStack -> Horisontal
    ZStack -> Z-index stack
    var body: some View {

        VStack(alignment: .leading, spacing: 8, content: { 
        // the first item is on the top, when the last is at the bottom
            Rectangle()
                .fill(Color.red)
                .frame(width:200, height:200)

            Rectangle()
                .fill(Color.green)
                .frame(width:150, height:150)

            Rectangle()
                .fill(Color.orange)
                .frame(width:100, height:100)
        })

        HStack(alignment: .top, spacing: 8, content: {
        // the first item is on the left, when the last is on the right
            Rectangle()
                .fill(Color.red)
                .frame(width:100, height:100)

            Rectangle()
                .fill(Color.green)
                .frame(width:100, height:100)

            Rectangle()
                .fill(Color.orange)
                .frame(width:100, height:100)
        })

        ZStack(alignment: .leading, content: { 
        // the first item is in the back, when the last is in the front
            Rectangle()
                .fill(Color.red)
                .frame(width:100, height:100)

            Rectangle()
                .fill(Color.green)
                .frame(width:100, height:100)

            Rectangle()
                .fill(Color.orange)
                .frame(width:100, height:100)
        })



        // S T A C K I N G
        ZStack (alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width:350, height:500, alignment: .center)

            VStack (alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill.background(Color.red)
                    .frame(width:150, height:150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width:100, height:100)
                
                HStack (alignment: .bottom) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width:50, height:50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width:75, height:75)

                    Rectangle()
                        .fill(Color.blue)
                        .frame(width:25, height:25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }


        // R E A L   E X A M P L E
        VStack (alignment: .center, spacing: 20)
        {
            Text("5")
                .font(.largeTitle)
                .underline()

            Text("Items in your cart")
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct VHZStacksVHZStacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VHZStacksBootcamp()
    }
}
