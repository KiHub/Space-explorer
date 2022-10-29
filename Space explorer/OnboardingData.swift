//
//  OnboardingData.swift
//  Space explorer
//
//  Created by  Mr.Ki on 29.10.2022.
//

import Foundation

struct OnboardingData: Hashable, Identifiable {
    let id: Int
    let backgroundImage: String
    let objectImage: String
    let primaryText: String
    let secondaryText: String

    static let list: [OnboardingData] = [
        OnboardingData(id: 0, backgroundImage: "path", objectImage: "productivity", primaryText: "Are you looking for something space?", secondaryText: "If you are curious about space, it's definitely for you"),
        OnboardingData(id: 1, backgroundImage: "path", objectImage: "productivity", primaryText: "Get daily new space picture!", secondaryText: "Only couple minutes per dey and you will get many information and space pictures"),
        OnboardingData(id: 2, backgroundImage: "path", objectImage: "productivity", primaryText: "Ready for space adventure?", secondaryText: "Just push and start")
    ]
}
