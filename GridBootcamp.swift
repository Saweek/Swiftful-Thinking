/*
    GridBootcamp.swift

All the items in the Lazy Grid, it will try to devide equally for every set column.
*/

import SwiftUI

struct GridBootcamp: View {

    let columns: [GridItem] = [ // we created a variable about columns
        GridItem( // Creates a grid with the provided size, spacing and alignment
        /*
            Has 2 overloads:
                () - all the values are set as a default
                (size: GridItem.Size, spacing: CGFloat?, alignment: Alignment?)
        */

            .flexible(),
            /*
                GridItem.Size has 3 values:
                    .fixed(CGFloat) - column with a specified size
                    .adaptive(minimum: CGFloat, maximum: CGFloat) - multiple items in the space of a single flexible item.
                    .flexible(minimum: CGFloat, maximum: CGFloat) - fit parent frame width
            */
            spacing = nil, 
            alignment = nil
        ),
        GridItem(.flexible(), spacing = nil, alignment = nil),
        GridItem(.flexible(), spacing = nil, alignment = nil)
    ]

    var body: some View {
        ScrollView() {

            Rectangle()
                .fill(Color.orange)
                .frame(height:400)

            LazyVGrid(
                columns: columns, // reffering to the variable
                alignment: .cemter, // where is all positioning
                spacing: nil, // spacing between rows
                pinnedViews: [.sectionHeaders] // pin to the top of the screen
                /*
                    Has 2 values:
                        .sectionFooters
                        .sectionHeaders
                */

            ) {
                Section(header: 
                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()) 
                {
                    ForEach(0..<20) {index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }

                Section(header: 
                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()) 
                {
                    ForEach(0..<20) {index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
            }
        } 
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
