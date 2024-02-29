//
//  ContentView.swift
//  CreatingActionSheetButtonsSwiftUI
//
//  Created by Sandra Gomez on 2/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showActionSheet = false
    @State private var buttonTapped = ""
    
    var body: some View {
        VStack (spacing: 25){
            Text("\(buttonTapped)")
            Button(action: {
                showActionSheet.toggle()
            }) {
                Text("Show Alert")
            }
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(title: Text("Look at all the options on an action sheet!"), message: nil, buttons: [
                    .default(Text("Default"), action: { buttonTapped = "Default"
                    }),
                    .default(Text("Another Default"), action: {
                        buttonTapped = "Another Default"
                    }),
                    .destructive(Text("Destructive"), action: {
                        buttonTapped = "Destructive"
                    }),
                    .cancel(Text("Cancel"), action: {
                        buttonTapped = "Cancelled"
                    })
                ]
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
