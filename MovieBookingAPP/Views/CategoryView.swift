//
//  CategoryView.swift
//  MovieBookingAPP
//
//  Created by Levan Gorjeladze on 18.01.23.
//

import SwiftUI

struct CategoryView: View {
    @State var animate = false
    
    var body: some View {
        
        ZStack{
            
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                .task {
                    withAnimation(.easeOut(duration: 7).repeatForever()){
                        animate.toggle()
                    }
                }
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
            
            VStack(spacing: 0.0){
                Text("Category")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
            
            
        }
        .background(
            LinearGradient(colors: [Color("backgroundColor"),Color("backgroundColor2")], startPoint: .top, endPoint: .bottom )
        )
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
