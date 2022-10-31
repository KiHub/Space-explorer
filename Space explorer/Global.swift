//
//  Global.swift
//  Space explorer
//
//  Created by  Mr.Ki on 31.10.2022.
//

import SwiftUI

class Global: ObservableObject {
   // @Published
    @AppStorage("showOnboarding") var onboardingOn: Bool = true
}
