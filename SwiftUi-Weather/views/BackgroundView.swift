//
//  BackgroundView.swift
//  SwiftUi-Weather
//
//  Created by Platinum WireLess on 30/03/2024.
//

import SwiftUI

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray: Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}
