//
//  HomeView.swift
//  Weather
//
//  Created by Miekusoft on 17/06/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // Mark: Background Color
            Color.background
                .ignoresSafeArea()
            
            // Mark: Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // Mark: House Image
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            VStack {
                Text("Montreal")
                    .font(.largeTitle)
                
                VStack {
                    Text("19°C" + "\n" + "Mostlt Clear")
                    
                    Text("H:24°C  L:18°C")
                        .font(.title3.weight(.semibold))
                    
                    Spacer()
                }
            }
            .padding(.top, 51)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
