//
//  ContentView.swift
//  profile page
//
//  Created by Clara T Brown on 2023-08-15.
//

import SwiftUI

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
                
                
                Text("User Profile").font(.system(size: 20).bold()).foregroundColor(.white)
                    .padding(.bottom, 200)
                
                
               Spacer()
            }.background(Color.blue)
            
            VStack {
                Text("Username").font(.system(size: 20).bold()).foregroundColor(.white)
                    .padding()
                Text(self.userUsername).font(.system(size: 20)).foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                
                
                Text("Password").font(.system(size: 20).bold()).foregroundColor(.white)
                    .padding()
                Text(self.userPassword).font(.system(size: 20)).foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("(Optional) Firebase info").font(.system(size: 20).bold()).foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.center)
                Text(self.userFirebase).font(.system(size: 20)).foregroundColor(.white).multilineTextAlignment(.center)
            }
            Spacer()
        }.background(Color.blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



