/*
    ControlGroupMenuBootcamp.swift
*/

import SwiftUI
struct ControlGroupMenuBootcamp: View {

    var body: some View {
        Menu("My Menu") {
            ControlGroup("1") {
                Button("Uno")
                Button("Dos")
                Menu("Tres") {
                    Button("Один") {}
                    Button("Два") {}
                }
            }
            Button("2") {}
            Button("3") {}

            Menu("Three") {
                Button("Hi") {}
                Button("Hello") {}
                Menu("How are you") {
                    Button("Good") {}
                    Button("Bad") {}
                }
            }
        }
    }
}

struct ControlGroupMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ControlGroupMenuBootcamp()
    }
}