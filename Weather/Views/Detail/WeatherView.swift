//
//  WeatherView.swift
//  Weather
//
//  Created by Morty on 20/06/2023.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            // Mark: background
            Color.background.ignoresSafeArea()
            
            // Mark: Weather widgets
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(Forecast.cities) { forecast in
                        WeatherWidget(forecast: forecast)
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                EmptyView()
                    .frame(height: 110)
            }
        }
        .overlay{
            NavigationBar()
        }
        .navigationBarHidden(true)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
            .preferredColorScheme(.dark)
    }
}
