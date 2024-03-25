/*
    GridComponentBootcamp.swift
*/

import SwiftUI
struct GridComponentBootcamp: View {

    var body: some View {

        Grid(alignment: .leading) {
            ForEach(0..<4) { rowIndex in
                GridRow(alignment: .top) {
                    ForEach(0..<4) { columIndex in
                    let cellNumber = (rowIndex * 4) + (columIndex  + 1)
                        cell(columIndex)

                        // what if we dont want to see #7
                        if cellNumber == 7 {
                            EmptyView()
                            // Color.clear
                            //     .gridCellUnsizedAxes([.horizontal, .vertical])
                                // .gridCellUnsizedAxes(.vertical)

                        // what 6 to take up 2 colums , but then we need Empty View
                        } else {
                            cell(cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridCellAnchor()
                                .gridColumnAlignment(cellNumber == 1 ? .trailing :
                                    cellNumber == 4 ? .leading : .center)
                        }
                    }
                }
            }
        }

        // Grid() {
        //     GridRow {
        //         cell(1)
        //         cell(2)
        //         cell(3)
        //     }

        //     Devider()
        //         .gridCellUnsizedAxes(.horizontal)
        //     // cell(300000000)

        //     GridRow {
        //         cell(4)
        //         cell(5)
        //         cell(6)
        //     }
        // }
    }

    private func cell(_ int: Int) -> some View {
        Text("\(int)")
            .frame(height: int == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

struct GridComponentBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridComponentBootcamp()
    }
}