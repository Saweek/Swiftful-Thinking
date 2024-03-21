/*
    PickerBootcamp.swift
*/

import SwiftUI

struct PickerBootcamp: View {

    @State var selection : String = "1"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]

    //it is made if we want to change teh color of the text or the color of background in the picker. SwiftUI Color doesn't support it, but UIColor does.
    // So we just take those stuff we need from UIKit.
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red

        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }

    var body: some View {

        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index]).tag(filterOptions[index])
                }
            }
        )
        .pickerStyle(SegmentedPickerStyle())
        .background(Color.red)
        .

        Picker(
            selection: $selection,
            label: 
                HStack {
                    Text("Filter")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
            , content: {
                ForEach (filterOptions, id: \.self) {option in
                    HStack
                    {
                        Text(option)
                        Image(systemName: "heart.fill")
                    }
                    .tag(option)
                }
            }
        )
        .pickerStyle(MenuPickerStyle())

        VStack
        {
            HStack
            {
                Text("Age:")
                Text(selection)
            }
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    ForEach(18..<100) { number in
                        Text("\(number)").tag("\(number)")
                            .foregroundColor(.red)
                            .font(.headline)
                    }
                }
            )
            .pickerStyle(WheelPickerStyle())
            // .background(Color.gray.opacity(0.3))
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
