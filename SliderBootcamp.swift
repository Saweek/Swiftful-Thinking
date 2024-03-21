/*
    SliderBootcamp.swift
*/

import SwiftUI

struct SliderBootcamp: View {

    @State var sliderValue: Double = 3
    @State var color: Color = .red

    var body: some View {
        VStack
        {
            Text("Rating:")
            // Text("\(sliderValue)")
            Text(String(format: "%.0f", sliderValue))
                .foregroundColor(color)

            // a usual slider from 0.0 to 1.0
            Slider(value: $sliderValue)

            // a slider with a specific number from and to (but still with decimals)
            Slider(
                value: $sliderValue,
                in: 0...100
            )

            // a slider with a specific step between given numbers
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 0.5
            )


            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChange: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1").font(.largeTitle).foregroundColor(.orange),
                maximumValueLabel: Text("5"),
                label: Text("Title")
            )
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
