//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Daniel Cummings on 27/06/2021.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstName = ""
    @State private var lastName  = ""
    @State private var company   = ""
    @State private var bio       = ""
    
    
    var body: some View {
        VStack {
            ZStack {
                Color(.secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                HStack(spacing: 16) {
                    ZStack {
                        AvatarView(size: 84)
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(x: 25,y: -15)
                    }
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1) {
                        TextField("First Name" , text: $firstName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Last Name" , text: $lastName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Company Name", text: $company)
                        
                    }.padding(.trailing, 16)
                    
                }
                .padding(.horizontal)
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Bio: ")
                    .font(.callout)
                    .foregroundColor(.secondary)
                +
                Text("\(100 - bio.count)")
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(bio.count <= 100 ? .brandPrimary : Color(.systemPink))
                +
                Text(" characters remaining")
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.secondary, lineWidth: 1))
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Create Profile")
            }
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ProfileView()
        }
    }
}
