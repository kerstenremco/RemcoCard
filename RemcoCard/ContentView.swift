//
//  ContentView.swift
//  RemcoCard
//
//  Created by Remco Kersten on 20/03/2020.
//  Copyright © 2020 Remco Kersten. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red:1.00, green:0.75, blue:0.46, alpha:1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("remco")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Remco Kersten")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("web- en iOS developer")
                    .foregroundColor(.white)
                    .font(.system(size:25))
                Divider()
                InfoView(text: "06 31 64 92 19", imageName: "phone.fill")
                InfoView(text: "kersten.remco@outlook.com", imageName: "envelope.fill")
                
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
    }
}

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(UIColor(red:1.00, green:0.47, blue:0.47, alpha:1.00)))
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
