/*
    ObservableMacroBootcamp.swift

    Observable macro instead of Observable Object 

    macro = @... (as long as i understand, i'm not sure)

    in @Observable we no longer need @Published
    So it will treat it that everything by default is published, if you dont want to publish something
    you need to use @ObservationIgnored macro to property

    Also, we doont need to use @StateObject. Just @State is enough

    And to add a var to envierment use .environment(var) instead of .environmentObject(var)

    @ObservedObject became @Bindable
*/

import SwiftUI

@Observable class ObservableViewModel {
    var title: String = "Some title"
    // @ObservationIgnored var value: String = "Some title"
}

struct ObservableMacroBootcamp: View {
    @State private var viewModel = ObservableViewModel()

    var body: some View {
        VStack (spacing: 40)
        {
            Button(viewModel.title) {
                viewModel.title = "New Title"
            }

            SomeChildView(viewModel: viewModel)
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "fajldsifjaæos"
        }
    }
}

struct SomeThirdView: View {
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third View"
        }
    }
}

struct ObservableMacroBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ObservableMacroBootcamp()
    }
}