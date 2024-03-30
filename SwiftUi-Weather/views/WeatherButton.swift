//
//  WeatherButton.swift
//  SwiftUi-Weather
//
//  Created by Platinum WireLess on 30/03/2024.
//

import SwiftUI

struct WeatherButtonView: View {
    var title:String
    var textColor: Color
    var buttonColor: Color
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold))
            .frame(width: 280, height: 50)
            .background(buttonColor)
            .foregroundColor(textColor)
            .cornerRadius(10.0)
    }
}
