//
//  ContentView.swift
//  Space explorer
//
//  Created by  Mr.Ki on 24.10.2022.
//

import SwiftUI

struct ContentView: View {
 //   @State private var currentTab = 0
  //  @AppStorage("onboarded") var onboarded: Bool = false
  
    var body: some View {
//        TabView(selection: $currentTab,
//                        content:  {
//                            Text("First View")
//                                .tag(0)
//                            Text("Second View")
//                                .tag(1)
//                            Text("Third View")
//                                .tag(2)
//                        })
//        TabView(selection: $currentTab,
//                       content:  {
//                           ForEach(OnboardingData.list) { viewData in
//                               OnboardingView(data: viewData)
//                                   .tag(viewData.id)
//                           }
//                       })
//        .tabViewStyle(PageTabViewStyle())
//                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//    }
//        if onboarded == false {
//            OnboardingManager()
//                .onDisappear {
//                    print("on apear")
//                    onboarded = true
//                }
//
//        } else {
//            MainView()
//            }
            OnboardingManager()
           
            
        //    onboarded = true
        }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
