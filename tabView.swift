//
//  tabView.swift
//  miniChallange2
//
//  Created by Ahad Obaid Albaqami on 18/06/1443 AH.
//

import SwiftUI

struct tabView: View {
    var body: some View {
        
        ZStack{
            /*
             TabView{
                     TodayView()
                         .tabItem{
                             Image(systemName: "doc.text.image")
                             Text("Today")
                         }
                     ProductView()
                         .tabItem{
                             Image(systemName:"square.3.stack.3d.top.filled")
                             Text("Products")
                         }
                     SearchView()
                         .tabItem{
                             Image(systemName:"magnifyingglass")
                             Text("Search")

                         }
                 }
             */
        
            TabView{
                
                HomePage()
                    .tabItem {
                        Label ("Home" , systemImage: "house" )
                    }
                
                
                            ParkingSpot()
                            .tabItem {
                            Label ("My Spot"
                          , systemImage: "parkingsign")
                            }
                
                
                
                ProfileScreen()
                    .tabItem {
                        Label("Profile" , systemImage: "person" )
                        
                    }
                
            } .accentColor(.white)
        }
        
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
            .preferredColorScheme(.dark)
    }
}
