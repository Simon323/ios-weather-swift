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
            
            // Mark: Current Weather
            VStack(spacing: -10) {
                Text("Montreal")
                    .font(.largeTitle)
                
                VStack {
//                    Text("19°C")
//                        .font(.system(size: 96, weight: .thin))
//                        .foregroundColor(.primary)
//                    +
//                    Text("\n")
//                    +
//                    Text("Mostly Clear")
//                        .font(.title3.weight(.semibold))
//                        .foregroundColor(.secondary)
                    
                    Text(attributedString)
                    
                    Text("H:24°C L:18°C")
                        .font(.title3.weight(.semibold))
                    
                    Spacer()
                }
            }
            .padding(.top, 51)
        }
    }
    
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n " + "Mostly Clear")
        
        if let temp = string.range(of: "19°") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        
        if let weather = string.range(of: "Mostly Clear") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        
        return string;
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
