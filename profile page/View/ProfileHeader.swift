//
//  ProfileHeader.swift
//  profile page
//
//  Created by Clara T Brown on 2023-08-15.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack {
            HStack {
                
                
                Image("profile-icon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .clipped()
                    .padding()
                
                
                Text("User Profile").font(.system(size: 20).bold()).foregroundColor(.white)
                    .padding(.bottom, 200)
                
                ZStack {
                    Text("Username").font(.system(size: 20).bold()).foregroundColor(.white)
                        .padding(.top, 200)
                        .multilineTextAlignment(.center)
                    
                    Text("Password").font(.system(size: 20).bold()).foregroundColor(.white)
                        .padding(.top, 400)
                        .multilineTextAlignment(.center)
                    
                    Text("(Optional) Firebase info").font(.system(size: 20).bold()).foregroundColor(.white)
                        .padding(.top, 600)
                        .multilineTextAlignment(.center)
                }
               
            }
            Spacer()
        }.background(Color.blue)
        
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}
