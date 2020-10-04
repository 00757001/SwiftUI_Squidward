     //
//  ContentView.swift
//  00757001-Drawing
//
//  Created by User04 on 2020/9/27.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                    NavigationLink(destination: ContentView2()) {
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
                        Face()
                        Limb()
                        Shirt()
                    }.offset(x:25,y:10).scaleEffect(1)
                }
            .background(Image("ocean").resizable().frame(width: 550,height: 910))
            .navigationBarHidden(true)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView_Library: LibraryContentProvider{
    static var views:[LibraryItem]{
        [LibraryItem(ContentView(), title: "Squidward")]
    }
}

struct Head: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 120, y: 300))
            path.addQuadCurve(to: CGPoint(x: 40, y: 230), control: CGPoint(x: 85, y: 300))
            path.addQuadCurve(to: CGPoint(x: 40, y: 150), control: CGPoint(x: 30, y: 190))
            path.addQuadCurve(to: CGPoint(x: 190, y: 70), control: CGPoint(x: 80, y: 65))
            path.addQuadCurve(to: CGPoint(x: 310, y: 100), control: CGPoint(x: 260, y: 70))
            path.addQuadCurve(to: CGPoint(x: 280, y: 270), control: CGPoint(x: 390, y: 180))
            path.addQuadCurve(to: CGPoint(x: 250, y: 302), control: CGPoint(x: 264, y: 290))
            path.addQuadCurve(to: CGPoint(x: 260, y: 312), control: CGPoint(x: 270, y: 320))
            path.addQuadCurve(to: CGPoint(x: 280, y: 362), control: CGPoint(x: 310, y: 320))
            path.addQuadCurve(to: CGPoint(x: 110, y: 372), control: CGPoint(x: 200, y: 350))
            path.addQuadCurve(to: CGPoint(x: 125, y: 322), control: CGPoint(x: 30, y: 380))
            path.addLine(to:CGPoint(x:120,y:300))
        }
    }
}


struct Frown: Shape {
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to:CGPoint(x:130,y:125))
            path.addQuadCurve(to: CGPoint(x: 250, y: 130), control: CGPoint(x: 200, y: 110))
            path.move(to:CGPoint(x:130,y:135))
            path.addQuadCurve(to: CGPoint(x: 250, y: 140), control: CGPoint(x: 200, y: 120))
            path.move(to:CGPoint(x:130,y:150))
            path.addQuadCurve(to: CGPoint(x: 250, y: 155), control: CGPoint(x: 200, y: 135))
            
        }
    }
}

struct Mouth: Shape {
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            //left
            path.move(to:CGPoint(x:100,y:355))
            path.addQuadCurve(to: CGPoint(x: 185, y: 340), control: CGPoint(x: 150, y: 340))
            //right
            path.move(to:CGPoint(x:270,y:340))
            path.addQuadCurve(to: CGPoint(x:283, y: 343), control: CGPoint(x: 275, y: 340))
            
        }
    }
}


struct Eyelid: Shape {
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            //down left
            path.move(to:CGPoint(x:96,y:230))
            path.addQuadCurve(to: CGPoint(x:195,y:230), control: CGPoint(x:146,y:220))
            //down right
            path.move(to:CGPoint(x:195,y:230))
            path.addQuadCurve(to: CGPoint(x:288,y:230), control: CGPoint(x:247.5,y:220))

            //up left
            path.move(to:CGPoint(x:195,y:230))
            path.addQuadCurve(to: CGPoint(x:146,y:172), control: CGPoint(x:200,y:180))
            path.addQuadCurve(to: CGPoint(x:96,y:230), control: CGPoint(x:95,y:185))
            //up right
            path.move(to:CGPoint(x:288,y:230))
            path.addQuadCurve(to: CGPoint(x:235,y:172), control: CGPoint(x:280,y:178))
            path.addQuadCurve(to: CGPoint(x:195,y:205), control: CGPoint(x:200,y:180))
            path.addQuadCurve(to: CGPoint(x:195,y:230), control: CGPoint(x:197,y:220))
            
        }
    }
}

struct Nose: Shape {
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to:CGPoint(x:170,y:285))
            path.addLine(to:CGPoint(x:185,y:310))
            path.addQuadCurve(to: CGPoint(x: 195, y: 405), control: CGPoint(x: 180, y: 350))
            path.addQuadCurve(to: CGPoint(x: 265, y: 405), control: CGPoint(x: 240, y: 455))
            path.addQuadCurve(to: CGPoint(x: 190, y: 260), control: CGPoint(x: 300, y: 330))
            
        }
    }
}

struct Eyewhite: Shape {
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            //left
            path.move(to:CGPoint(x:96,y:230))
            path.addQuadCurve(to: CGPoint(x:195,y:230), control: CGPoint(x:146,y:220))
            path.addQuadCurve(to: CGPoint(x:150,y:294), control: CGPoint(x:200,y:285))
            path.addQuadCurve(to: CGPoint(x:96,y:230), control: CGPoint(x:95,y:280))
            //right
            path.move(to:CGPoint(x:195,y:230))
            path.addQuadCurve(to: CGPoint(x:288,y:230), control: CGPoint(x:247.5,y:220))
            path.addQuadCurve(to: CGPoint(x:236,y:294), control: CGPoint(x:285,y:285))
            path.addQuadCurve(to: CGPoint(x:195,y:261), control: CGPoint(x:190,y:260))
            
        }
    }
}
struct Neck: Shape{
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x: 170, y: 360))
            path.addQuadCurve(to: CGPoint(x: 150, y: 440), control: CGPoint(x: 160, y: 400))
            path.addLine(to: CGPoint(x:165,y:460))
            path.addLine(to: CGPoint(x:190,y:380))
            
            //補缺角
            path.move(to: CGPoint(x: 170, y: 360))
            path.addLine(to: CGPoint(x:184,y:360))
            path.addLine(to: CGPoint(x:189,y:380))
        }
    }
}

struct TShirt: Shape{
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x:150,y:440))
            path.addQuadCurve(to: CGPoint(x: 115, y: 470), control: CGPoint(x: 120, y: 445))
            path.addQuadCurve(to: CGPoint(x: 30, y: 570), control: CGPoint(x: 80, y: 475))
            path.addLine(to: CGPoint(x:95,y:610))
            path.addLine(to: CGPoint(x:130,y:560))
            path.addQuadCurve(to: CGPoint(x: 110, y: 720), control: CGPoint(x: 125, y: 650))
            path.addQuadCurve(to: CGPoint(x: 250, y: 720), control: CGPoint(x: 180, y: 737))
            path.addQuadCurve(to: CGPoint(x: 245, y: 550), control: CGPoint(x: 260, y: 730))
            path.move(to: CGPoint(x:247,y:590))
            path.addLine(to: CGPoint(x:280,y:565))
            path.addQuadCurve(to: CGPoint(x: 190, y: 445), control: CGPoint(x: 260, y: 470))
            path.addQuadCurve(to: CGPoint(x: 170, y: 440), control: CGPoint(x: 190, y: 440))
            path.addLine(to: CGPoint(x: 165, y: 460))
            path.addLine(to: CGPoint(x: 150, y: 440))
        }
    }
}
struct Collar: Shape{
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x:115,y:470))
            path.addLine(to: CGPoint(x:140,y:495))
            path.addLine(to: CGPoint(x:165,y:460))
            path.addLine(to: CGPoint(x:166,y:490))
            path.addQuadCurve(to: CGPoint(x: 190, y: 445), control: CGPoint(x: 175, y:460))
            path.addLine(to: CGPoint(x:192,y:475))
            path.addLine(to: CGPoint(x:175,y:470))
        }
    }
}

struct Lefthand: Shape{
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x: 45, y: 579))
            path.addLine(to:CGPoint(x: 70, y: 594))
            path.addQuadCurve(to: CGPoint(x: 65, y: 790), control: CGPoint(x: 50, y: 690))
            path.addQuadCurve(to: CGPoint(x: 30, y: 790), control: CGPoint(x: 50, y: 800))
            path.addQuadCurve(to: CGPoint(x: 45, y: 579), control: CGPoint(x: 15, y: 640))
        }
    }
}

struct Righthand: Shape{
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x: 247, y: 590))
            path.addLine(to: CGPoint(x: 266, y: 575))
            path.addQuadCurve(to: CGPoint(x: 270, y: 790), control: CGPoint(x: 290, y: 780))
            path.addQuadCurve(to: CGPoint(x:240,y:790), control: CGPoint(x: 260, y: 800))
            path.addQuadCurve(to: CGPoint(x:255,y:716), control: CGPoint(x: 260, y: 760))
            path.addQuadCurve(to: CGPoint(x: 247, y: 590), control: CGPoint(x: 260, y: 740))
        }
    }
}

struct Butt: Shape{
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x: 255, y: 716))
            path.addQuadCurve(to: CGPoint(x: 240, y: 790), control: CGPoint(x: 260, y: 770))
            path.addQuadCurve(to: CGPoint(x: 180, y: 810), control: CGPoint(x: 210, y: 810))
            path.addQuadCurve(to: CGPoint(x: 110, y: 720), control: CGPoint(x: 100, y: 800))
        }
    }
}

struct Leg: Shape{
    func path(in rect: CGRect) -> Path {
        Path {(path) in
            path.move(to: CGPoint(x: 150, y: 800))
            path.addLine(to: CGPoint(x:145,y:900))
            path.addLine(to: CGPoint(x:125,y:900))
            path.addLine(to: CGPoint(x:132,y:794))
            
            path.move(to: CGPoint(x: 150, y: 800))
            path.addLine(to: CGPoint(x:145,y:900))
            path.addLine(to:CGPoint(x: 170, y: 905))
            path.addLine(to: CGPoint(x:175,y:810))
            
            path.move(to: CGPoint(x: 175, y: 810))
            path.addLine(to:CGPoint(x:170,y:905))
            path.addLine(to: CGPoint(x:208,y:905))
            path.addLine(to: CGPoint(x: 200, y: 810))
            
            path.move(to: CGPoint(x:200,y:810))
            path.addLine(to: CGPoint(x:208,y:905))
            path.addLine(to: CGPoint(x:235,y:905))
            path.addLine(to: CGPoint(x:220,y:800))
        }
    }
}

struct Face: View {
    var body: some View {
        ZStack{
            Group{
                Neck().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Neck().stroke(lineWidth: 5)
                Head().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Head().stroke(lineWidth: 5)
                
            }
            Group{
                //三條線
                Path{ (path) in
                    path.move(to: CGPoint(x: 75, y:200))
                    path.addLine(to: CGPoint(x:100, y:200))
                }
                .stroke(style: StrokeStyle(lineWidth: 60, dash: [5]))
                
                Frown().stroke(style:StrokeStyle(lineWidth: 5, lineCap: .round))
                Mouth().stroke(lineWidth: 5)
                Nose().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Nose().stroke(lineWidth: 5)
            }
            Group{//eyes
                Eyelid().fill(Color(red: 146/255, green: 188/255, blue: 180/255))
                Eyelid().stroke(lineWidth: 5)
                Eyewhite().fill(Color(red: 255/255, green: 250/255, blue:199/255))
                Eyewhite().stroke(lineWidth: 5)
                Rectangle()
                    .frame(width:20,height: 45)
                    .offset(x:-60,y:-161)
                    .foregroundColor(Color(red: 105/255, green: 41/255, blue: 45/255))
                Rectangle()
                    .frame(width:20,height: 35)
                    .offset(x:33,y:-166)
                    .foregroundColor(Color(red: 105/255, green: 41/255, blue: 45/255))
            }
        }
    }
}


struct Shirt: View{
    var body: some View{
        ZStack{
            TShirt().fill(Color(red: 230/255, green: 59/255, blue: 59/255))
            TShirt().fill(Color(red: 196/255, green: 123/255, blue: 17/255))
            TShirt().stroke(lineWidth: 5)
            Collar().stroke(lineWidth: 5)
           
        }
    }
}

struct Limb: View{
    var body: some View{
        ZStack{
            Leg().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
            Leg().stroke(lineWidth: 5)
            Group{
                Lefthand().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Lefthand().stroke(lineWidth: 5)
                Righthand().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Righthand().stroke(lineWidth: 5)
                Butt().fill(Color(red: 186/255, green: 216/255, blue: 206/255))
                Butt().stroke(lineWidth: 5)
            }
        }
    }
}
