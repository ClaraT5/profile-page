//
//  ContentView.swift
//  profile page
//
//  Created by Clara T Brown on 2023-08-15.
//

import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct ContentView: View {
    
    @State private var userUsername = "AAAAAAAAAAAAAAAAAAA"
    @State private var userPassword = "BBBBBBBBBBBBBBBBBBB"
    @State private var userFirebase = "CCCCCCCCCCCCCCCCCCC"
    @State var title = "1"
    
    var body: some View {
        VStack {
            HStack {
                Image("profile-icon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .clipped()
                    .padding(.bottom, 200)
                    
                
                
                Text("User Profile:").font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 200)
                    
                Text("(Name)").font(.system(size: 20).bold())
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 200)
                
                
                
               Spacer()
            }.background(Color(hex: 0x0b3d08))
            
            VStack {
                Text("Username").font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding()
                Text(self.userUsername).font(.system(size: 20)).foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                
                
                Text("Password").font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding()
                Text(self.userPassword).font(.system(size: 20)).foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                Text("(Optional) Firebase info").font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding()
                    .multilineTextAlignment(.center)
                Text(self.userFirebase).font(.system(size: 20)).foregroundColor(.black).multilineTextAlignment(.center)
            }
            Spacer()
        }.background(Color(hex: 0xe3d4b0))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



