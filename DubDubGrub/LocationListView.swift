//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Daniel Cummings on 27/06/2021.
//

import SwiftUI

struct LocationListView: View {
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10 , id:\.self) { item in
                    NavigationLink(destination: LocationDetailView()) {
                        LocationListCellView()
                    }
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
