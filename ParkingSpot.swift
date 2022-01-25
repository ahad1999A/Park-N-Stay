import SwiftUI

struct ParkingSpot: View {
    
    // @State private var alertPresented = false
    // @State private var ParkingSpot8 = false
    
    @State private var showingAlert = false
    @State private var showingView = false
    @State var isActive = false
    @State var isModal: Bool = false
    
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                
                HStack(spacing:20){
                    ZStack{
                        Rectangle()
                            .frame(width: 95, height: 102)
                            .cornerRadius(15)
                            .foregroundColor(Color("Pink"))
                        
                        Text("1st Floor 10/40")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 50)
                            .font(.system(.callout, design: .rounded))
                        
                        
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 54.45, height: 52)
                            .cornerRadius(15)
                            .foregroundColor(Color("grey"))
                        Text("2nd Floor")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 50)
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 54.45, height: 52)
                            .cornerRadius(15)
                            .foregroundColor(Color("grey"))
                        Text("3rd Floor")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 50)
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 54.45, height: 52)
                            .cornerRadius(15)
                            .foregroundColor(Color("grey"))
                        Text("4th Floor")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 50)
                    }
                    
                }
                .padding(.bottom)
                
                Text("Please Select Available Parking Spot")
                    .foregroundColor(Color.white)
                    .padding(.top)
                
                ZStack{
                    
                    HStack{
                        Divider()
                            .background(Color.gray)
                            .frame(height: 340)
                    }
                    HStack(spacing:180){
                        Divider()
                            .background(Color.gray)
                            .frame(width: 140, height: 350)
                        Divider()
                            .background(Color.gray)
                            .frame(width: 140, height: 350)
                    }
                    //                Dividers
                    HStack(spacing:110){
                        VStack(spacing:-110){
                            Group{
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                            }
                        }
                        VStack(spacing:-110){
                            Group{
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                                Divider()
                                    .background(Color.gray)
                                    .frame(width: 140, height: 180)
                            }
                        }
                    }
                    //                cars
                    HStack(spacing:130){
                        
                        HStack(spacing:12){
                            
                            VStack(spacing:7){
                                
                                HStack(){
                                    Text("A1")
                                        .foregroundColor(Color.white)
                                    
                                    Image("greenOval")
                                }
                                .padding()
                                HStack{
                                    
                                    Text("A2")
                                        .foregroundColor(Color.white)
                                    
                                    Image("greenOval")
                                }
                                .padding()
                                
                                
                                
                                HStack{
                                    Image("leftCar")
                                        .rotationEffect(.degrees(90))
                                    Image("redOval")
                                }
                                .padding(.top)
                                
                                
                                HStack{
                                    
                                    Image("leftCar")
                                        .rotationEffect(.degrees(90))
                                    Image("redOval")
                                }
                                
                                HStack{
                                    Text("A5")
                                        .foregroundColor(Color.white)
                                    
                                    
                                    Image("greenOval")
                                    
                                }
                                .padding()
                                
                            }
                            
                            
                            VStack(spacing:3){
                                HStack{
                                    Image("redOval")
                                    Image("leftCar")
                                        .rotationEffect(.degrees(270))
                                    
                                }
                                
                                
                                
                                HStack{
                                    Image("redOval")
                                    Image("leftCar")
                                        .rotationEffect(.degrees(270))
                                }
                                
                                
                                
                                HStack{
                                    Image("redOval")
                                    Image("leftCar")
                                        .rotationEffect(.degrees(270))
                                }
                                HStack{
                                    Image("redOval")
                                    Image("leftCar")
                                        .rotationEffect(.degrees(270))
                                }
                                HStack{
                                    Image("redOval")
                                    Image("leftCar")
                                        .rotationEffect(.degrees(270))
                                }
                            }
                            
                        }
                        HStack(spacing:-10){
                            VStack(spacing:15){
                                HStack{
                                    Image("leftCar")
                                        .rotationEffect(.degrees(90))
                                    Image("redOval")
                                }
                                HStack{
                                    Image("leftCar")
                                        .rotationEffect(.degrees(90))
                                    Image("redOval")
                                }
                                HStack{
                                    
                                    
                                    Button(action: {
                                        self.showingAlert = true
                                    }) {
                                        Text("A8")
                                            .foregroundColor(.white)
                                            .alert(isPresented:$showingAlert) {
                                                Alert(title: Text("You picked spot A8 "), message: Text("show navigations.."), primaryButton:.default(Text("Navigate me")){
                                                    self.showingView = true
                                                }, secondaryButton: .cancel(Text("Cancel")))
                                            }
                                    }
                                    
                                    NavigationLink("View2", destination: NavigatePage2(), isActive: $showingView)
                                        .frame(width: 0, height: 0)
                                    
                                    
                                    
                                    Image("greenOval")
                                }
                                
                                .offset(x:20)
                                HStack{
                                    Image("leftCar")
                                        .rotationEffect(.degrees(90))
                                    Image("redOval")
                                }
                                HStack{
                                    Image("leftCar")
                                        .rotationEffect(.degrees(90))
                                    Image("redOval")
                                }
                                
                            }
                            
                            VStack(spacing:25){
                                HStack{
                                    Image("greenOval")
                                    Text("B1")
                                        .foregroundColor(Color.white)
                                    
                                }
                                .padding()
                                .offset(x:12 , y:-2)
                                HStack{
                                    Image("greenOval")
                                    Text("B2")
                                        .foregroundColor(Color.white)
                                }
                                
                                .offset(x:12 , y:16)
                                HStack{
                                    Image("greenOval")
                                    Text("B3")
                                        .foregroundColor(Color.white)
                                    
                                }
                                
                                .offset(x: 12, y:28)
                                HStack{
                                    Image("redOval")
                                    Image("leftCar")
                                        .rotationEffect(.degrees(270))
                                }
                                .offset(y:30)
                                .offset(x:20)
                                HStack{
                                    Image("redOval")
                                    Image("leftCar")
                                        .rotationEffect(.degrees(270))
                                }
                                .offset(y:10)
                                .offset(x:20)
                                
                                
                            }
                            
                        }
                        
                    }
                }
                
                .navigationBarHidden(true)
            }
            .navigationBarHidden(true)
            //        .navigationTitle("parking spot")
            
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Navy"))
            
            
            // .navigationTitle("parking spot")
            
            
            
        }
        
    }
}
struct NavigatePage2: View {
//    init() {
//        
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//    }
    
    @State var isActive = false
    @State var isModal: Bool = false
    
    var body: some View {
        
        ZStack{
            
            VStack{
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("Light"))
                        .frame(width: 374.0, height: 88.0)
                    
                    
                    HStack(spacing:45){
                        Image("ArrowRight")
                        
                        
                        
                        Text("Turn right")
                            .font(.system(.largeTitle, design: .rounded))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                    }
                }
                
                VStack{
                    
                    ZStack{
                        HStack(spacing: 100){
                            
                            Group{
                                
                                
                                ZStack{
                                    
                                    Divider()
                                        .background(.gray)
                                        .frame(width: 1, height: 390)
                                    
                                    
                                    VStack(spacing: -22 ){
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        
                                    }
                                    
                                    
                                }
                            }  //Devider on the left
                            
                            Group {
                                ZStack{
                                    
                                    Divider()
                                        .background(.gray)
                                        .frame(width: 1, height: 390)
                                    
                                    VStack( spacing: -22 ){
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                        Divider()
                                            .background(.gray)
                                            .frame(width: 140.0, height: 100.0)
                                    }
                                    
                                }
                            }//Devider on the right
                            
                        }
                        //Right side
                        HStack(spacing:30){
                            
                            HStack(){
                                
                                VStack(spacing:20){
                                    
                                    
                                    HStack{
                                        
                                        
                                        Text("A1")
                                            .foregroundColor(.white)
                                            .padding(.vertical , 24.7)
                                        Image("greenOval")
                                        
                                    }
                                    
                                    HStack{
                                        
                                        Text("A2")
                                            .foregroundColor(.white)
                                            .padding(.vertical , 24.7)
                                        Image("greenOval")
                                        
                                    }
                                    
                                    HStack(){
                                        
                                        Image("leftCar")
                                            .rotationEffect(.degrees(90))
                                        Image("redOval")
                                            .padding(.trailing)
                                        
                                        
                                    }
                                    
                                    HStack{
                                        
                                        Image("leftCar")
                                            .rotationEffect(.degrees(90))
                                        Image("redOval")
                                            .padding(.trailing)
                                        
                                    }
                                    HStack{
                                        
                                        
                                        Text("A5")
                                            .foregroundColor(.white)
                                            .padding(.vertical , 24.7)
                                        Image("greenOval")
                                        
                                        
                                    }
                                }
                                VStack(spacing:20){
                                    
                                    
                                    HStack{
                                        
                                        Image("redOval")
                                        Image("leftCar")
                                            .rotationEffect(.degrees(270))
                                        
                                        
                                    }
                                    
                                    HStack{
                                        Image("redOval")
                                        Image("leftCar")
                                            .rotationEffect(.degrees(270))
                                        
                                    }
                                    
                                    HStack{
                                        Image("redOval")
                                        Image("leftCar")
                                            .rotationEffect(.degrees(270))
                                        
                                        
                                        
                                    }
                                    
                                    HStack{
                                        Image("redOval")
                                        Image("leftCar")
                                            .rotationEffect(.degrees(270))
                                        
                                        
                                    }
                                    HStack{
                                        Image("redOval")
                                        Image("leftCar")
                                            .rotationEffect(.degrees(270))
                                        
                                    }
                                    
                                }
                            }
                            
                            VStack(){
                                
                                VStack(){
                                    
                                    Spacer()
                                    HStack{
                                        
                                        
                                        ZStack{
                                            Divider()
                                                .frame(width: 1.0, height: 340)
                                                .background(.gray)
                                            
                                            
                                            VStack{
                                                Spacer()
                                                Spacer()
                                                Spacer()
                                                Divider()
                                                    .frame(width: 4.0, height: 220)
                                                    .background(.white)
                                                
                                            }
                                            .frame(height:490)
                                            
                                            
                                            
                                            VStack{
                                                Spacer()
                                                Spacer()
                                                Spacer()
                                                HStack{
                                                    Spacer()
                                                    Spacer()
                                                    Spacer()
                                                    Spacer()
                                                    
                                                    Image(systemName: "arrow.right")
                                                        .resizable()
                                                        .frame(width: 36, height: 30)
                                                        .foregroundColor(Color.white)
                                                    
                                                }
                                                //Arrow
                                                .frame(width:53 , height: 136 )
                                                
                                            }
                                            
                                            .frame(height:185)
                                            
                                        }
                                    }
                                }
                                
                                Image("leftCar")
                                
                                
                            }
                            //left side
                            HStack(){
                                
                                
                                VStack(spacing:20.0) {
                                    
                                    HStack{
                                        
                                        Image("leftCar")
                                            .rotationEffect(.degrees(90))
                                        Image("redOval")
                                        
                                        
                                    }
                                    
                                    HStack{
                                        
                                        
                                        Image("leftCar")
                                            .rotationEffect(.degrees(90))
                                        Image("redOval")
                                    }
                                    
                                    HStack{
                                        
                                        Text("A8")
                                            .foregroundColor(.white)
                                            .padding(.vertical , 24.7)
                                        Image("greenOval")
                                    }
                                    
                                    HStack{
                                        Image("leftCar")
                                            .rotationEffect(.degrees(90))
                                        Image("redOval")
                                        
                                    }
                                    HStack{
                                        
                                        Image("leftCar")
                                            .rotationEffect(.degrees(90))
                                        Image("redOval")
                                        
                                    }
                                    
                                }
                                Spacer()
                                Spacer()
                                
                                VStack(spacing:20){
                                    
                                    HStack{
                                        Image("greenOval")
                                        Text("A1")
                                            .foregroundColor(.white)
                                            .padding(.vertical , 24.7)
                                        
                                        
                                    }
                                    
                                    HStack{
                                        Image("greenOval")
                                        Text("A2")
                                            .foregroundColor(.white)
                                            .padding(.vertical , 27.7)
                                        
                                        
                                    }
                                    HStack{
                                        Image("greenOval")
                                        Text("A3")
                                            .foregroundColor(.white)
                                            .padding(.vertical , 24.7)
                                        
                                    }
                                    
                                    HStack{
                                        Image("redOval")
                                        Image("leftCar")
                                            .rotationEffect(.degrees(270))
                                    }
                                    HStack{
                                        
                                        Image("redOval")
                                        Image("leftCar")
                                            .rotationEffect(.degrees(270))
                                        
                                    }
                                    
                                }
                                
                                
                            }
                            
                        }
                    }
                    
                    HStack(){
                        
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 15)
                            
                                .fill(Color("Light"))
                                .ignoresSafeArea()
                                .frame(width: 390, height: 80)
                            
                            VStack(){
                                
                                Text("1 min")
                                    .font(.system(.title2 , design: .rounded))
                                    .foregroundColor(Color.white)
                                
                                    .padding(.trailing , 169)
                                
                                Text("Riyadh Park - Spot A8 ")
                                    .font(.system(.title2 , design: .rounded))
                                 //   .font(.title2)
                                    .foregroundColor(Color.white)
                                
                                
                            }
                            .padding(.trailing , 150)
                            HStack{
                                Spacer()
                                
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color("Pink"))
                                        .frame(width: 66, height: 53)
                                    
                                    Button("Exit") {
                                        self.isModal = true
                                    } .foregroundColor(Color("white"))
                                    
                                    
                                        .background(Color("Pink"))
                                        .cornerRadius(15)
                                    
                                        .sheet(isPresented: $isModal, content: {
                                            ParkingSpot()
                                        })
                                    
                                    
                                    
                                }
                                
                                
                            }
                            
                            .frame(width: 300)
                            
                            
                            
                            
                            
                        }
                    }
                    
                }
            }
        }
        .navigationBarHidden(true)
        //
        //        .navigationBarHidden(true)
        
        
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Navy"))
        
        
        // .navigationBarHidden(true)
        
    }
}
struct ParkingSpot_Previews: PreviewProvider {
    static var previews: some View {
        ParkingSpot()
            .preferredColorScheme(.dark)
    }
}
