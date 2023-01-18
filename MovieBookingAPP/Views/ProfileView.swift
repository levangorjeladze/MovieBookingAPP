//
//  ProfileView.swift
//  MovieBookingAPP
//
//  Created by Levan Gorjeladze on 18.01.23.
//

import SwiftUI

struct ProfileView: View {
    @State var animate = false
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var phone = ""
    @State private var email = ""
    
    var imageUrl = URL(string: "https://scontent.ftbs5-3.fna.fbcdn.net/v/t39.30808-6/293694027_2731583970316838_6241135717156034342_n.jpg?stp=cp6_dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHNgBk2JpMRvjTKZ6NjbnY0utNRNq3_-Di601E2rf_4OAGu6zX6ow3pp50MIrCD21937GedG1Qsu1UNbFngMg1E&_nc_ohc=qwnVuIdDYl8AX9IR4dB&_nc_ht=scontent.ftbs5-3.fna&oh=00_AfB4g70wNpk5FweZ_oXOxwRphvDgmgl604xSgFgjbHYy6A&oe=63CD0610")
    
    
    var body: some View {
        NavigationView {
                VStack{
                    AsyncImage(url: imageUrl) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .cornerRadius(100)
                    } placeholder: {
                        ProgressView()
                    }
                    .padding()
                    
                    Form {
                        Section(header: Text("Personal Info")){
                            TextField("First Name",text: $firstName)
                            TextField("Last Name",text: $lastName)
                            TextField("Email",text: $email)
                            TextField("Phone",text: $phone)
                            
                        }
                    }
                }
                .navigationTitle("Settings")
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        Button{
                            print("Save tapped")
                        }label: {
                            Label("Save",systemImage: "square.and.arrow.down")
                        }
                    }
                }
                .background(
                    LinearGradient(colors: [Color("backgroundColor"),Color("backgroundColor2")], startPoint: .top, endPoint: .bottom )
                )
                
            }
            .navigationViewStyle(.stack)
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
struct ProfileImage:View{
    var imageName: String
    var body: some View{
        Image(imageName)
            .resizable()
            .frame(width: 100,height: 100)
            .clipShape(Circle())
    }
}
