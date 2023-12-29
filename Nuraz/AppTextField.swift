//
//  AppTextField.swift
//  Nuraz
//
//  Created by Enike Braimoh on 23/12/2023.
//

import Foundation
import SwiftUI

struct AppTextField : View {
    @FocusState private var isFocused: Bool
    @Binding var textValue : String
    let placeHolderText : Text
    let iconNamePath : String
    
    var body : some View {
        
        VStack(alignment: .leading) {
            Text("Enter your BVN")
            ZStack{
                if textValue.isEmpty {
                    placeHolderText.foregroundStyle(Color(.init(white :3, alpha :0.90)))
                        .padding(.leading, 20)
                }
                HStack(spacing: 20){
                    TextField("Enter you details", text : $textValue).foregroundColor(.black).focused($isFocused)
                    Image(systemName: iconNamePath)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.gray)
                }
            }
            .padding()
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
               .cornerRadius(4)
            .foregroundStyle(.gray)
        }
        .padding(.horizontal)
    }
    
}


#Preview {
    AppTextField(
        textValue:.constant("") ,
        placeHolderText: Text("Text"),
        iconNamePath: "envelope"
    )
}
