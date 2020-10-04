//
//  ContentView2.swift
//  00757001-Drawing
//
//  Created by User08 on 2020/10/1.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        ZStack{
            NavigationLink(destination: ContentView()) {
                Text("Squidward Q. Tentacles")
                    .font(.system(size: 33.5,design:.rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                    .padding()
                    .multilineTextAlignment(.center)
                    .position(x:200,y:50)
                    .offset(x:7,y:-20)
            }
 
            Group{
                Face2()
                Limb()
                Shirt()
            }.offset(x:25,y:10).scaleEffect(1)
        }
        .background(Image("ocean").resizable().frame(width: 550,height: 910))
        .navigationBarHidden(true)
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}


struct Head2: Shape {
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x: 120, y: 300))
            path.addQuadCurve(to: CGPoint(x: 40, y: 230), control: CGPoint(x: 85, y: 300))
            path.addQuadCurve(to: CGPoint(x: 40, y: 150), control: CGPoint(x: 30, y: 190))
            path.addQuadCurve(to: CGPoint(x: 190, y: 70), control: CGPoint(x: 80, y: 65))
            path.addQuadCurve(to: CGPoint(x: 310, y: 100), control: CGPoint(x: 260, y: 70))
            path.addQuadCurve(to: CGPoint(x: 280, y: 270), control: CGPoint(x: 390, y: 180))
            path.addQuadCurve(to: CGPoint(x: 250, y: 302), control: CGPoint(x: 264, y: 290))
            path.addQuadCurve(to: CGPoint(x: 270, y: 320), control: CGPoint(x: 270, y: 330))
            path.addQuadCurve(to: CGPoint(x: 290, y: 320), control: CGPoint(x: 270, y: 310))
            path.addQuadCurve(to: CGPoint(x:295, y: 375), control: CGPoint(x: 330, y: 340))
            path.addQuadCurve(to: CGPoint(x: 70, y: 360), control: CGPoint(x: 140, y: 410))
            path.addQuadCurve(to: CGPoint(x: 70, y: 330), control: CGPoint(x: 60, y: 350))
            path.addQuadCurve(to: CGPoint(x: 95, y: 320), control: CGPoint(x: 80, y: 320))
            path.addQuadCurve(to: CGPoint(x: 120, y: 330), control: CGPoint(x: 110, y: 320))
            path.addLine(to:CGPoint(x:120,y:300))
                
        }
    }
}

struct Mouth2: Shape {
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x: 100, y: 335))
            path.addQuadCurve(to: CGPoint(x: 90, y: 360), control: CGPoint(x: 80, y: 340))
            path.move(to: CGPoint(x: 90, y: 347))
            path.addQuadCurve(to: CGPoint(x: 290, y: 347), control: CGPoint(x: 190, y: 390))
            path.move(to: CGPoint(x: 277, y: 333))
            path.addQuadCurve(to: CGPoint(x: 282, y: 367), control: CGPoint(x: 305, y: 342))
            
            
        }
    }
}

struct Face2: View {
    var body: some View {
        ZStack{
            Group{
                Neck().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Neck().stroke(lineWidth: 5)
                Head2().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Head2().stroke(lineWidth: 5)      
            }
            Group{
                Frown().stroke(style:StrokeStyle(lineWidth: 5, lineCap: .round))
                Mouth2().stroke(lineWidth: 5)
                
            }
            Group{//eyes
                
                Ellipse()
                    .fill(Color(red: 255/255, green: 250/255, blue:199/255))
                    .overlay(Ellipse().stroke(Color.black,lineWidth: 5))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:125)
                    .offset(x:30,y:-175)
                Nose().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Nose().stroke(lineWidth: 5)
                Ellipse()
                    .fill(Color(red: 255/255, green: 250/255, blue:199/255))
                    .overlay(Ellipse().stroke(Color.black,lineWidth: 5))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height:125)
                    .offset(x:-60,y:-175)
                
                Rectangle()
                    .frame(width:20,height: 45)
                    .offset(x:-60,y:-170)
                    .foregroundColor(Color(red: 105/255, green: 41/255, blue: 45/255))
                Rectangle()
                    .frame(width:20,height: 45)
                    .offset(x:33,y:-170)
                    .foregroundColor(Color(red: 105/255, green: 41/255, blue: 45/255))
            }
        }
    }
}
