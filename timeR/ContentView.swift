//
//  ContentView.swift
//  timeR
//
//  Created by swift on 18.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            Home()
    }
}
    
    
    struct Home: View{
        @State var start = false
        @State var to : CGFloat = 0
        @State var count = 0
        @State var time = Timer.publish(every: 1, on: .main, in: .common)
        var body: some View {
            ZStack {
                Color.black.opacity(0.06)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    ZStack{
                        Circle()
                            .trim(from: 0, to: 1)
                            .stroke(Color.green.opacity(0.09), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                            .frame(width: 300, height: 300)
                        
                        Circle()
                                .trim(from: 0, to: self.to)
                            .stroke(Color.green.opacity(0.09), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                            .frame(width: 300, height: 300)
                        
                    }
                }
                
            }
        }
    }
        //        HStack (
        //        ){
        //            ForEach (
        //                1...5,
        //                id: \.self
        //            ){
        //                Text("Item \($0)")
        //                VStack () {
        //                    Text("Vertical1")
        //                    Text("vertical2")
        //                }
        //            }
        //        }
//        ZStack {
//            ForEach(0..<colors.count) {
//                Rectangle()
//                    .fill(colors[$0])
//                    .frame(width: 100, height: 100)
//                    .offset(x: CGFloat($0) * 10.0,
//                            y: CGFloat($0) * 10.0)
                
//            }
//        }
        //        ForEach(0..<colors.count) {
        //            Rectangle()
        //                .fill(colors[$0])
        //                .frame(width: 100, height: 100)
        //                .offset(x: CGFloat($0) * 10.0, y: CGFloat($0) * 10.0)
        
//        ZStack (alignment: .bottomLeading){
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 50)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 50, height: 100)
//        }
//        .border(Color.green, width:10)
//        .padding(100)
//
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
                            
