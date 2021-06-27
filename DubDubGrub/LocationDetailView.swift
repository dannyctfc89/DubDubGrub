//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Danny Cummings on 27/06/2021.
//

import SwiftUI

struct LocationDetailView: View {
    
    var columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        
        VStack(spacing: 16) {
            Image("default-banner-asset")
                .resizable()
                .scaledToFill()
                .frame(height: 120)
            
            HStack {
                Label("123 Main Street" , systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text("This is a text description. This is a text description . This is a text description .This is a text description .This is a text description .This is a text description")
                .lineLimit(3)
                .frame(height: 70)
                .minimumScaleFactor(0.75)
                .padding(.horizontal)
            
            ZStack {
                Capsule()
                    .frame(height:80)
                    .foregroundColor(Color(.secondarySystemBackground))
                
                HStack(spacing: 20) {
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    }
                    
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }
                    Button {
                        
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                }
            }
            .padding(.horizontal)
            
            Text("Who's Here?")
                .bold()
                .font(.title2)
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns, content: {
                    FirstNameAvatar(firstName: "Danny")
                    FirstNameAvatar(firstName: "Sophie")
                    FirstNameAvatar(firstName: "Ariella")
                    FirstNameAvatar(firstName: "Archie")
                    
                    
                })
            }
            Spacer()
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        LocationDetailView()
            .preferredColorScheme(.dark)
        }
    }
}

struct LocationActionButton: View {
    
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
                .foregroundColor(.white)
            
        }
    }
}


struct FirstNameAvatar : View {
    
    var firstName: String
    
    var body : some View {
        VStack {
            AvatarView(size: 64)
            Text(firstName)
                .bold()
                .minimumScaleFactor(0.75)
                .lineLimit(1)
        }
        
    }
}
