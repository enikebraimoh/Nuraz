//
//  OnboardingScreen.swift
//  Nuraz
//
//  Created by Enike Braimoh on 28/12/2023.
//

import Foundation
import SwiftUI


struct OnboardingScreen: View {
    @State private var currentStep = 0
    
    var body: some View {
        VStack(alignment : .center){
            VStack{
                HStack {
                    HStack{
                        ForEach(0..<onBoardingSteps.count, id: \.self){ it in
                       
                            if it == currentStep {
                                Rectangle()
                                    .frame(width: 20, height: 10)
                                    .cornerRadius(5) // Adjust the corner radius as needed
                                    .foregroundColor(.black)
                            } else {
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.gray)
                            }
                            
                        }
                    }
                    Spacer()
                    Button(action: {
                        currentStep = onBoardingSteps.count - 1
                    }, label: {
                        Text("Skip")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.blue)
                    })
                    
                }.padding(.horizontal)
            
                TabView(selection : $currentStep){
                    ForEach(0..<onBoardingSteps.count, id: \.self){ it in
                        VStack{
                            Image(onBoardingSteps[it].image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 350, height: 350)
                            VStack(alignment: .leading){
                                Text(onBoardingSteps[it].title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .bold().padding(.vertical, 10)
                                Text(onBoardingSteps[it].description).font(.callout)
                            }
                        }.tag(it)
                    }
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
            Spacer()
            Button(action: {
                if currentStep < onBoardingSteps.count - 1 {
                    currentStep += 1
                } else{
                    
                }
            }) {
                Text("Pay a bill now").frame(maxWidth: .infinity)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20.5)
                    .background(Color(red: 32/255, green: 64/255, blue: 168/255))
                    .cornerRadius(10)
            }
            
        }.padding()
    }
}




#Preview {
    OnboardingScreen()
}

