//
//  OnboardingView.swift
//  Space explorer
//
//  Created by  Mr.Ki on 29.10.2022.
//

import SwiftUI

struct OnboardingView: View {
    var data: OnboardingData
  //  @State private var showMain: Bool = false
    @State private var isAnimating: Bool = false
   // @AppStorage("onboarded") var onboarded: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Image(data.backgroundImage)
                    .resizable()
                    .scaledToFit()

                Image(data.objectImage)
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: 150)
                    .scaleEffect(isAnimating ? 1 : 0.9)
            }

            Spacer()
            Spacer()

            Text(data.primaryText)
                .font(.title2)
                .bold()
                .foregroundColor(Color(red: 41 / 255, green: 52 / 255, blue: 73 / 255))

            Text(data.secondaryText)
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 250)
                .foregroundColor(Color(red: 237 / 255, green: 203 / 255, blue: 150 / 255))
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 2, y: 2)

            Spacer()

            Button(action: {
                // Add action for button
            //    onboarded = true
           //     showMain.toggle()
            }, label: {
              //  Text(OnboardingData. == 2 ? "Get Started" : "")
                Text("Get Started")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 16)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(
                                Color(
                                    red: 255 / 255,
                                    green: 115 / 255,
                                    blue: 115 / 255
                                )
                            )
                    )
            })
//            .fullScreenCover(isPresented: $showMain, content: {
//                MainView()
//            })
            .shadow(radius: 10)

            Spacer()
        }
        .onAppear(perform: {
            isAnimating = false
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimating = true
            }
        })
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(data: OnboardingData.list.first!)
    }
}
