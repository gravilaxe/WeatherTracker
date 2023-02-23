//
//  WeatherView.swift
//  WeatherTracker
//
//  Created by Joshua Wright on 15/02/2023.
//

import SwiftUI

struct WeatherView: View {
    @StateObject private var weatherAPIClient = WeatherAPIClient()
    
    
    var body: some View {
        ZStack{
            Rectangle().fill(LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
            VStack{
                Text("DERBY")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.top)
                
                Text(Date.now, format: .dateTime.day().month().year())
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding(.bottom, 120)
                    .textCase(.uppercase)
                if let currentWeather = weatherAPIClient.currentWeather{
                    currentWeather.weatherCode.image
                        .resizable()
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .frame(width:200, height: 150)
                    Text("\(currentWeather.temperature)°C")
                        .font(.largeTitle)
                        .padding(.top)
                        .foregroundColor(.white)
                }
            
                Spacer()
                HStack{
                    Spacer()
                    SmallWeatherBox(image: "cloud.rain", time: "2:00", temp: "20")
                        .frame(width:150, height:75)
                        .opacity(0.7)
                    Spacer()
                    SmallWeatherBox(image: "humidity", time: "2:00", temp: "20")
                        .frame(width:150, height:75)
                        .opacity(0.7)
                    
                    Spacer()
                }
                Spacer()
                }
                Spacer()
            }
        }
     
    }

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
