//
//  OnboardingData.swift
//  Nuraz
//
//  Created by Enike Braimoh on 29/12/2023.
//

import Foundation

struct OnboardingStep {
    let image : String
    let title : String
    let description : String
}

let onBoardingSteps = [
    OnboardingStep(
        image: "onboarding_screen1",
        title: "Pay all your bills \non the go ⚡️",
        description: "With Billza, you can make all your payments from one dashboard in easy steps"
    ),
    OnboardingStep(
        image: "onboarding_screen2",
        title: "Keep track of all \nyour transactions 👀  ",
        description: "With Billza, you can make all your payments from one dashboard in easy steps  "
    ), OnboardingStep(
        image: "onboarding_screen3",
        title: "*Fund* your lifestyle \nround the clock 💰 ",
        description: "With Billza, you can make all your payments from one dashboard in easy steps"
    )
]

