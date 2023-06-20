//
//  WeatherWidget.swift
//  Weather
//
//  Created by Miekusoft on 20/06/2023.
//

import SwiftUI

struct WeatherWidget: View {
    var forecast: Forecast
    var body: some View {
        ZStack(alignment: .bottom) {
            // MarkL Trapezoid
            Trapezoid()
                .fill(Color.weatherWidgetBackground)
                .frame(width: 342, height: 174)
            
            //Mark: Content
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 8) {
                    // Mark: Forecast temperature
                    Text("\(forecast.temperature)°")
                        .font(.system(size: 64))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        // Mark: Forecast temperature range
                        Text("H:\(forecast.high)° L:\(forecast.low)°")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
                        // Mark: Forecast location
                        Text(forecast.location)
                            .font(.body)
                            .lineLimit(1)
                    }
                }
                
                VStack(alignment: .trailing, spacing: 0) {
                    // Mark: Forecast large icon
                    Image("\(forecast.icon) large")
                        .padding(.trailing, 4)
                    
                    // Mark: Weather
                    Text(forecast.weather.rawValue)
                        .font(.footnote)
                        .padding(.trailing, 24)
                }
            }
            .foregroundColor(.white)
            .padding(.bottom, 20)
            .padding(.leading, 20)
        }
        .frame(width: 342, height: 184, alignment: .bottom)
    }
}

struct WeatherWidget_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWidget(forecast: Forecast.cities[0])
            .preferredColorScheme(.dark)
    }
}
