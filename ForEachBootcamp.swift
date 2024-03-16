/*
    ForEachBootcamp.swift
*/

import SwiftUI

struct ForEachBootcamp: View {

    let data: [String] = [
        "Hi",
        "Hello",
        "hey everyone"
    ]
    let myString: String = "Hello"

    var body: some View {
        VStack
        {
            ForEach(data.indices) { index in
                HStack
                {
                    Text("\(data[index]): \(index)")
                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
