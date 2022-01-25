//
//  ProfileScreen.swift
//  miniChallange2
//
//  Created by Ahad Obaid Albaqami on 18/06/1443 AH.
//

import SwiftUI

struct ProfileScreen: View {
    @State private var username: String = ""

    var body: some View {
        
      NavigationView{
        

            VStack(spacing:8){
                
                Image(systemName: "gearshape")
                    .foregroundColor(Color.white)
                    .padding(.leading , 300)
                    .frame(width: 30.0, height: 29.0)
                VStack{
                    
                    
                    ZStack{
                        Circle()
                            .stroke(Color.gray , lineWidth: 1)
                            .frame(width: 96, height: 95 )
                        Image("Alhanouf")
                            .resizable()
                            .frame(width: 40, height: 79.21, alignment: .center)
                    }
                    
                    Text("AlHanouf")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    
                }
                Group{
                Text("Detalis")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.trailing , 260)
                
                   
                    TextField("Username" , text: $username)
                        .foregroundColor(Color("white"))
                        .frame(width: 325.0, height: 44.0)
                        .background(Color("Light"))
                        .cornerRadius(10)
                        .overlay(Image(systemName: "pencil")
                                    .foregroundColor(Color.white)
                                    .padding(.leading , 279)
                                 
                        )
                    
                    

                
                    TextField("Password" , text: $username)
                        .foregroundColor(Color("white"))
                        .frame(width: 325.0, height: 44.0)
                        .background(Color("Light"))
                        .cornerRadius(10)
                        .overlay(Image(systemName: "pencil")
                                    .foregroundColor(Color.white)
                                    .padding(.leading , 279)
                                 
                        )
                    
       
                    TextField("Email Address" , text: $username)
                        .foregroundColor(Color("white"))
                        .frame(width: 325.0, height: 44.0)
                        .background(Color("Light"))
                        .cornerRadius(10)
                        .overlay(Image(systemName: "pencil")
                                    .foregroundColor(Color.white)
                                    .padding(.leading , 279)
                                 
                        )
                    

                }
                
                    TextField("Change your password" , text: $username)
                        .foregroundColor(Color("white"))
                        .frame(width: 325.0, height: 44.0)
                        .background(Color("Light"))
                        .cornerRadius(10)
                        .overlay(Image(systemName: "pencil")
                                    .foregroundColor(Color.white)
                                    .padding(.leading , 279)
                                 
                        )
                    
                Group{
                    Text("App")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(.trailing , 290)
                 
             
                    ZStack{
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("Light"))
                    .frame(width: 326, height: 50)
                    
      
                        NavigationLink(destination: AboutUs(), label: {
                            Text("About Park N' Stay")
                                .foregroundColor(Color.white)
                                .padding(.trailing , 145)
                                                       
                        })
                   
                  
                    .overlay(Image(systemName: "info.circle")
                                .foregroundColor(Color.white)
                                .padding(.leading , 250)
                                , alignment: .trailing )
                    }
                   
                
                }
                
                Group{
                Text("Account")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.trailing , 260)
                    
                    ZStack{
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("Light"))
                    .frame(width: 326, height: 50)
                    
      
                        NavigationLink(destination: Logout(), label: {
                            Text("Logout")
                                .foregroundColor(Color("Pink"))
                                .fontWeight(.semibold)
                                .padding(.trailing , 230)
                                                       
                        })
                   
                  
                    .overlay(Image("Logout2")
                              
                                .padding(.leading , 240)
                                , alignment: .trailing
                    
                    )
                    }

                }
                
            }
            .ignoresSafeArea()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color("Navy"))
  
          
//        .navigationBarHidden(true)
//        .navigationBarHidden(true)
       }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
