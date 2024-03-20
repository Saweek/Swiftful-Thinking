/*
    ActionSheetBootcamp.swift
*/

import SwiftUI

struct ActionSheetBootcamp: View {

    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .otherPost

    enum ActionSheetOptions {
        case myPost
        case otherPost
    }
    var body: some View {
        VStack {
            HStack
            {
                Circle()
                    .frame(width:30, height:30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .otherPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding

            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }

    func getActionSheet(parameters) -> ActionSheet {

        let shareButton:ActionSheet.Button = .default(Text("Share"), action: {})
        let reportButton:ActionSheet.Button = .destructive(Text("Report"), action: {})
        let deleteButton:ActionSheet.Button = .destructive(Text("Delete"), action: {})
        let cancelButton:ActionSheet.Button = .default(Text("Cancel"), action: {})

        switch actionSheetOption {
        case .otherPost:
            return ActionSheet(
                title: Text("What would you like to do?"),
                messege: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        
        case .myPost:
            return ActionSheet(
                title: Text("What would you like to do?"),
                messege:,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
            
        }





        // // return ActionSheet(title: Text("This is the title!"))

        // let button1: ActionSheet.Button = .default(Text(DEFAULT""))
        // let button2: ActionSheet.Button = .destructive(Text("DESTRACTIVE"))
        // let button3: ActionSheet.Button = .cancel()

        // return ActionSheet(
        //     title: Text("This is a title"),
        //     messege Text("This is the message."),
        //     buttons: [button1, button2, button3]
        )
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
