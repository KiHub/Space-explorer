//
//  ContentView.swift
//  Space explorer
//
//  Created by  Mr.Ki on 24.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var global = Global()
    
    var body: some View {
        
        if global.onboardingOn {
            OnboardingManager()
        } else {
            MainView()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
