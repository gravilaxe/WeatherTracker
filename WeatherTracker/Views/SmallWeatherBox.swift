//
//  Box.swift
//  WeatherTracker
//
//  Created by Joshua Wright on 16/02/2023.
//

import SwiftUI

struct SmallWeatherBox: View {
    var image:String
    var time:String
    var temp:String
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(15)
                .foregroundColor(.gray)
                .opacity(0.3)
                .shadow(radius: 5)
            HStack {
                VStack{
                    Image(systemName: "\(image)")
                        .resizable()
                        .frame(width:50, height:50)
                }
                .padding(.trailing)
                VStack{
                    Text("\(time)")
                        .font(.body)
                        .padding(.bottom, 3)
                    Text("\(temp)")
                }
            }
        }.ignoresSafeArea()
            
    }
}

struct Box_Previews: PreviewProvider {
    static var previews: some View {
        SmallWeatherBox(image: "sun.min", time: "2:00", temp: "32c")
    }
}
