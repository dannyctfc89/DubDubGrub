//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Daniel Cummings on 26/06/2021.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
            LocationListView()
                .tabItem {
                    Label("List", systemImage: "building")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
