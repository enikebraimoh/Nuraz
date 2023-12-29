//
//  ContentView.swift
//  Nuraz
//
//  Created by Enike Braimoh on 21/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var email : String
    
    var body: some View {
        VStack(spacing : 20) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            AppTextField(
                textValue: $email,
                placeHolderText: Text("Text"),
                iconNamePath: "envelope"
            )
        }
        .padding()
    }
}


#Preview {
    ContentView(email: "")
}
