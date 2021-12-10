//
//  Main.swift
//  HW5
//
//  Created by Aiganym Moldagulova on 09/12/2021.
//

import SwiftUI

var buttonText1 = "Work"
var buttonText2 = "Study"
var buttonText3 = "Workout"
var buttonText4 = "Reading"
var buttonText5 = "Meditation"
var buttonText6 = "Others"


struct Main: View {
    var body: some View {
        Screen1()
        //Screen2()
        //Screen3()
        //Screen4()
    }
}

struct Screen1: View{
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 60){
                Spacer()
                FocusCategory()
                ZStack{
                    Track()
                 //   CircleTimeProgress()
                    FocusOnYourTask1()
                }
                PlayStop()
                Spacer()
                Spacer()
            }
        }
    }
}


struct Screen2: View{
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 60){
                Spacer()
                FocusCategory()
                ZStack{
                    Track()
                 //   CircleTimeProgress()
                    FocusOnYourTask2()
                }
                PauseStop()
                Spacer()
                Spacer()
            }
        }
    }
}

struct Screen3: View{
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 60){
                Spacer()
                FocusCategory()
                ZStack{
                    Track()
                 //   CircleTimeProgress()
                    Break()
                }
                PauseStop()
                Spacer()
                Spacer()
            }
        }
    }
}

struct Screen4: View{
    var body: some View {
        ZStack{
            Image("BG")
                .resizable()
            VStack(spacing: 60){
                Spacer()
                FocusCategory()
                ZStack{
                    Track()
                 //   CircleTimeProgress()
                    Break()
                }
                PauseStop()
                Spacer()
                Spacer()
            }
            Color.black.opacity(0.2)
            NewScreen()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct NewScreen: View{
    var body: some View{
        VStack{
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .frame(width: 390, height: 362)
                VStack(alignment: .center, spacing: 30){
                    HStack{
                        Spacer()
                        Text("Focus Category")
                        Spacer()
                        Image(systemName: "xmark")
                            .padding(.trailing, 16)
                            //.frame(width: 390, height: 22, alignment: .topTrailing)
                    }
                    VStack{
                        HStack{
                            grayButtonView(s2: buttonText1)
                            grayButtonView(s2: buttonText2)
                        }
                        HStack{
                            blackButtonView(s2: buttonText3)
                            grayButtonView(s2: buttonText4)
                        }
                        HStack{
                            grayButtonView(s2: buttonText5)
                            grayButtonView(s2: buttonText6)
                        }
                        HStack{
                            
                        }
                    }
                }
            }
        }
    }
}

struct grayButtonView: View{
    var s2: String
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.buttonColor)
                .frame(width: 172, height: 60)
            Button(s2){
                print("the button was clicked")
            }
            .foregroundColor(.black)
            .font(.system(size: 16, weight: .regular, design: .default))
            .padding(EdgeInsets(top: 18, leading: 24, bottom: 18, trailing: 24))
        }
    }
}

struct blackButtonView: View{
    var s2: String
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.black)
                .frame(width: 172, height: 60)
            Button(s2){
                print("the button was clicked")
            }
            .foregroundColor(.white)
            .font(.system(size: 16, weight: .regular, design: .default))
            .padding(EdgeInsets(top: 18, leading: 24, bottom: 18, trailing: 24))
        }
    }
}

struct FocusOnYourTask1: View {
    var body: some View {
        var minutes: CGFloat.IntegerLiteralType = 25
        var seconds: CGFloat.IntegerLiteralType = 0
        VStack{
            Text(String(format: "%02d:%02d", minutes, seconds))
                .font(.system(size: 44))
                .foregroundColor(.white)
                .padding(6)
            Text("Focus on your task")
                .foregroundColor(.white)
                .font(.system(size: 16))
        }
    }
}

struct FocusOnYourTask2: View {
    var body: some View {
        var minutes: CGFloat.IntegerLiteralType = 24
        var seconds: CGFloat.IntegerLiteralType = 32
        VStack{
            Text(String(format: "%02d:%02d", minutes, seconds))
                .font(.system(size: 44))
                .foregroundColor(.white)
                .padding(6)
            Text("Focus on your task")
                .foregroundColor(.white)
                .font(.system(size: 16))
        }
    }
}

struct Break: View {
    var body: some View {
        var minutes: CGFloat.IntegerLiteralType = 4
        var seconds: CGFloat.IntegerLiteralType = 48
        VStack{
            Text(String(format: "%02d:%02d", minutes, seconds))
                .font(.system(size: 44))
                .foregroundColor(.white)
                .padding(6)
            Text("Break")
                .foregroundColor(.white)
                .font(.system(size: 16))
        }
    }
}

struct CircleTimeProgress: View {
    var timer: CGFloat = 750
    var colors: [Color] = [Color.outlineColor]
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.clear)
                .frame(width: 248, height: 248)
                .overlay(
                    Circle()
                        .trim(from: 0, to: timer * 0.15)
                        .stroke(style: StrokeStyle(lineWidth:6, lineCap: .round, lineJoin: .round))
                       // .fill(Color.blue)
                        .fill(AngularGradient(gradient: .init(colors: colors), center: .center, startAngle: .zero, endAngle: .init(degrees: 360)))
                )//.withAnimation(.spring(response:2.0, dampingFraction: 1.0, blendDuration: 1.0))

        }
    }
}

struct Track: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.clear)
                .frame(width: 248, height: 248)
                .overlay(
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth:6))
                        .fill(Color.white)
                        .opacity(0.3)
                )
        }
    }
}

struct PlayStop: View{
    var body: some View{
        HStack(spacing: 80){
            Play()
            Stop()
        }
    }
}

struct PauseStop: View{
    var body: some View{
        HStack(spacing: 80){
            Pause()
            Stop()
        }
    }
}

struct Play: View{
    var body: some View{
        ZStack{
            Circle()
                .fill(Color.white)
                .opacity(0.3)
                .frame(width: 56, height: 56)
            Image(systemName: "play")
                .foregroundColor(.white)
                .font(Font.system(size: 20, weight: .heavy))
        }
    }
}

struct Pause: View{
    var body: some View{
        ZStack{
            Circle()
                .fill(Color.white)
                .opacity(0.3)
                .frame(width: 56, height: 56)
            Image(systemName: "pause")
                .foregroundColor(.white)
                .font(Font.system(size: 20, weight: .heavy))

        }
    }
}

struct Stop: View{
    var body: some View{
        ZStack{
            Circle()
                .fill(Color.white)
                .opacity(0.3)
                .frame(width: 56, height: 56)
            Image(systemName: "stop.fill")
                .foregroundColor(.white)
                .font(Font.system(size: 20, weight: .heavy))
        }
    }
}

struct FocusCategory: View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.white)
                .opacity(0.3)
                .frame(width: 170, height: 36)
            HStack{
                Image(systemName: "pencil")
                    .foregroundColor(.white)
                Text("Focus Category")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
