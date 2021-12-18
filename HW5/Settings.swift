//
//  Settings.swift
//  HW5
//
//  Created by Aiganym Moldagulova on 09/12/2021.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ZStack{
            Color.backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 20){
                HStack{
                    Spacer()
                    Text("Settings")
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                    Spacer()
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                        .padding(.trailing, 16)
                }
                HStack{
                    Text("Focus Time")
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                    Spacer()
                    TextField("25:00", text: .constant(""))
                        .foregroundColor(.red)
                        .font(.system(size: 17))
                        .frame(width: 46, height: 22)
                        .keyboardType(.numberPad)
                }
                HStack{
                    Text("Break Time")
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                    Spacer()
                    TextField("05:00", text: .constant(""))
                        .foregroundColor(.red)
                        .font(.system(size: 17))
                        .frame(width: 46, height: 22)
                        .keyboardType(.numberPad)
                }
                HStack{
                    Text("Sessions")
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                    Spacer()
                    TextField("2", text: .constant(""))
                        .foregroundColor(.red)
                        .font(.system(size: 17))
                        .frame(width: 46, height: 22)
                        .keyboardType(.numberPad)
                }
                Spacer()
            }.padding()
        }
        
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
