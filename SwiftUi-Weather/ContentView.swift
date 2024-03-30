//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by Platinum WireLess on 30/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack{
//         BackgroundView(isNight: isNight)
            
            ContainerRelativeShape()
                .fill(isNight ? Color.black.gradient : Color.blue.gradient)
                .ignoresSafeArea(.all)
            
            VStack{
                CityTextView(cityName: "Cupertino, CA")
        
                MainWeatherStatusView(imageName: isNight ?  "moon.stars.fill" : "cloud.sun.fill", temperature: 70)
               
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "TUe", temperature: 70, imageName: "cloud.bolt.rain.fill")
                    
                    WeatherDayView(dayOfWeek: "WED", temperature: 25, imageName: "cloud.sun.bolt.fill")
                    
                    WeatherDayView(dayOfWeek: "THU", temperature: 50, imageName: "cloud.moon.rain.fill")
                    
                    WeatherDayView(dayOfWeek: "SAT", temperature: 52, imageName: "cloud.hail.fill")
                    
                    WeatherDayView(dayOfWeek: "SUN", temperature: 40, imageName: "cloud.sun.fill")
                    
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                }label: {
                    WeatherButtonView(
                      title: "Chnge Day Time",
                      textColor: .white,
                      buttonColor: .mint
                    )
                
                }
                
                Spacer()
            }
            
        }.onAppear{
          let button =  WeatherButtonView(
            title: "Chnge Day Time",
            textColor: .white,
            buttonColor: .mint
          )
            print(type(of: button.body))

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var temperature:Int
    var imageName: String
    
    var body: some View {
    
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
                .padding(.bottom, 10)
            
            Image(systemName: imageName)
                .resizable()
                .symbolRenderingMode(.multicolor)
                //.renderingMode(.template)
                //.foregroundStyle(.orange, .red , .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature) °")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.white)
            
            
        }
    }
}


struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium , design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature) °")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
            
        }.padding(.bottom, 40)
    }
}

