//
//  WeatherView.swift
//  Weather
//
//  Created by Miekusoft on 20/06/2023.
//

import SwiftUI

struct WeatherView: View {
    @State private var searchText = ""
    
    var searchResult: [Forecast] {
        if searchText.isEmpty {
            return Forecast.cities
        } else {
            return Forecast.cities.filter { $0.location.contains(searchText) }
        }
    }
    
    var body: some View {
        ZStack {
            // Mark: background
            Color.background.ignoresSafeArea()
            
            // Mark: Weather widgets
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(searchResult) { forecast in
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
            NavigationBar(searchText: $searchText)
        }
        .navigationBarHidden(true)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WeatherView()
                .preferredColorScheme(.dark)
        }
    }
}
