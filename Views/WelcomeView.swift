//
//  WelcomeView.swift
//  ShoeStoreApp
//
//  Created by Rakhat Bakhytgali on 01.11.2026.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 35) {
            Spacer()
            Image("nike_swoosh")
                .resizable()
                .frame(maxHeight: 200)
            
            Text("Welcome")
                .font(.largeTitle)
                .bold()
            
            Text("Not just your shoes, but your style, comfort and armour")
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.gray)
            
            Spacer()
            
            NavigationLink(destination: HomeView()) {
                Text("Continue")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(Color.white)
                    .font(.title2)
                    .bold()
                    .padding(.vertical, 25)
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 30)
    }
}

#Preview {
    WelcomeView()
}
