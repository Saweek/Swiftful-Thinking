/*
    ButtonStylesBootcamp.swift
*/

import SwiftUI
struct ButtonStylesBootcamp: View {

    var body: some View {
        VStack
        {
            Button("Button Title") {
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            .controlSize(.large)
            .buttonBorderShape(.capsul || .RoundedRectangle(radius: 20))

            Button("Button Title") {
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.regular)

            Button("Button Title") {
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)

            Button("Button Title") {
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            .controlSize(.mini)
        }
        .padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}