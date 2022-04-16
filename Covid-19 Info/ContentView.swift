//
//  ContentView.swift
//  Covid-19 Info
//
//  Created by Sky Lock on 16/4/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
          Home_Page()
               .tabItem{
                    Label("Home", systemImage: "house")
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
