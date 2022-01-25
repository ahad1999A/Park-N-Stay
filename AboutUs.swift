//
//  AboutUs.swift
//  miniChallange2
//
//  Created by Ahad Obaid Albaqami on 18/06/1443 AH.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        NavigationView{
           
        ZStack{
            Color("Light")
                .ignoresSafeArea()
            
              
            VStack{
                
//                Text("Who are we?")
//                    .foregroundColor(Color("white"))
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .padding(.trailing , 160)

                
                Image("Logo")
                
                
                VStack(alignment: .leading){
                HStack{
                Text("We are a start up")
                        .font(.system(.title2 , design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("white"))
                Text("saudi")
                        .font(.system(.title2 , design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Pink"))

                }
                
                HStack{
                    Text("company")
                        .font(.system(.title2 , design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("Pink"))
                  
                    Text("aims to make your")
                        .font(.system(.title2 , design: .rounded))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("white"))
             
                    
                }
                
                HStack{
                    Text("life easier.")
                        .font(.system(.title2 , design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("white"))
                    Text("We help you to find")
                        .font(.system(.title2 , design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("white"))

                    
                }

                HStack{
                    Text("The")
                        .font(.system(.title2 , design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("white"))
                    
                    Text("nearest parking spot ")
                        .font(.system(.title2 , design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Pink"))
                       
              
                }
                
                Text("available to save your time and ")
                    .font(.system(.title2 , design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("white"))
                  
                
                Text("fuel")
                    .font(.system(.title2 , design: .rounded))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("white"))
                   
            }
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        
                        .fill(Color("Navy"))
                        .ignoresSafeArea()
                       
                Image("AboutPark")
                    .resizable()
                    .frame(width: .infinity , height: 400)
                }
            }
          
         // .navigationBarHidden(true)
            .navigationTitle("Who are we ? ")
            .navigationBarTitleDisplayMode(.automatic)
        }
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            AboutUs()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13")

            
        }
            
    }
}
