//
//  ForecastView.swift
//  WeatherTracker
//
//  Created by Joshua Wright on 16/02/2023.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        ZStack{
            Rectangle().fill(LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
            VStack{
                
                Text("FORECAST")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.vertical)
                
                HStack{
                    Spacer()
                    Text("TODAY")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()
                    Text(Date.now, format: .dateTime.day().month().year())                .font(.subheadline)
                        .foregroundColor(.white)
                        .textCase(.uppercase)
                    Spacer()
                }
                
                //TODO: Impliment Hourly Forecast
                HStack{
                    Text("DAILY")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                    Image(systemName: "calendar")
                        .foregroundColor(.white)
                }
                ScrollView{
                    GeometryReader { geo in
                        VStack(alignment: .leading){
                            SmallWeatherBox(image: "sun.min", time: "2:00", temp: "20")
                                .frame(width:geo.size.width-30, height:75)
                            SmallWeatherBox(image: "sun.min", time: "2:00", temp: "20")
                                .frame(width:geo.size.width-30, height:75)
                                .opacity(0.7)
                            SmallWeatherBox(image: "sun.min", time: "2:00", temp: "20")
                                .frame(width:geo.size.width-30, height:75)
                                .opacity(0.7)
                            SmallWeatherBox(image: "sun.min", time: "2:00", temp: "20")
                                .frame(width:geo.size.width-30, height:75)
                                .opacity(0.7)
                        }
                        .padding(.horizontal)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
    }
}
