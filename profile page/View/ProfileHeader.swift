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
                Text("User Profile")
                Spacer()
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
