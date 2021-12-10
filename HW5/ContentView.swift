//
//  ContentView.swift
//  HW5
//
//  Created by Aiganym Moldagulova on 09/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Main()
                .tabItem{
                    Image(systemName: "house.circle")
                    Text("Main")
                }
            Settings()
                .tabItem{
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                }

            History()
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("History")
                }
        }
        .accentColor(.white)
    }
}

extension Color{
    static func rgb(r: Double, g: Double, b: Double) -> Color {
        return Color(red: r / 255, green: g / 255, blue: b / 255)
    }
    static let backgroundColor = Color.rgb(r: 51, g: 51, b: 51)
    static let outlineColor = Color.rgb(r: 54, g: 255, b: 203)
    static let buttonColor = Color.rgb(r: 244, g: 244, b: 244)
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
