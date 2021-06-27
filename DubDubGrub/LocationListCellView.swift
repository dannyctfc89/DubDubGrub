//
//  LocationListCellView.swift
//  DubDubGrub
//
//  Created by Danny Cummings on 27/06/2021.
//

import SwiftUI

struct LocationListCellView: View {
    
    
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("AC Kitchen & Lounge")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack {
                    ForEach(0..<3, id: \.self) { p in
                        AvatarView(size: 35)
                    }
                }
            }
            .padding(.leading)
        }
    }
}

struct LocationListCellView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListCellView()
    }
}

struct AvatarView: View {
    
    var size: CGFloat
    
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}
