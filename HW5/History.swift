//
//  History.swift
//  HW5
//
//  Created by Aiganym Moldagulova on 09/12/2021.
//

import SwiftUI

var date1 = "25.11.21"
var date2 = "20.11.21"
var date3 = "19.11.21"

struct History: View {
    var body: some View {
        ZStack{
            Color.backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 30){
                Text("History")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                Parts(s: date1)
                Parts(s: date2)
                Parts(s: date3)
                Spacer()
            }.padding()
        }
        
    }
}

struct Parts: View{
    var s: String
    var body: some View{
        Section(){
            HStack{
                Text(s)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .heavy, design: .default))
                Spacer()
            }
            HStack{
                Text("Focus Time")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                Spacer()
                Text("25:00")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                //                        TextField("25:00", text: .constant(""))
                //                            .foregroundColor(.red)
                //                            .font(.system(size: 17))
                //                            .frame(width: 46, height: 22)
                //                            .keyboardType(.numberPad)
            }
            HStack{
                Text("Break Time")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                Spacer()
                Text("05:00")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
//                TextField("05:00", text: .constant(""))
//                    .foregroundColor(.red)
//                    .font(.system(size: 17))
//                    .frame(width: 46, height: 22)
//                    .keyboardType(.numberPad)
            }
            HStack{
                Text("Sessions")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                Spacer()
                Text("2")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
//                TextField("2", text: .constant(""))
//                    .foregroundColor(.red)
//                    .font(.system(size: 17))
//                    .frame(width: 46, height: 22)
//                    .keyboardType(.numberPad)
            }
        }
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
