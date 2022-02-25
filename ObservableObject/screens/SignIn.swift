//
//  SignIn.swift
//  ObservableObject
//
//  Created by Abduqaxxor on 25/2/22.
//

import SwiftUI

struct SignIn: View {
    
    @EnvironmentObject var status: Status
    @State var userId = ""
    @State var userPw = ""
    
    var body: some View {
        
        NavigationView{
            VStack{
                Spacer()
                Image("profile_image")
                    .resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                TextField("User ID",text: $userId).frame(height: 45)
                    .padding(.leading , 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(22.5)
                SecureField("User PW", text: $userPw)
                    .frame(height: 45)
                    .padding(.leading , 10)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(22.5)
                Button(action: {
                    UserDefaults.standard.set("pdp",forKey: "userid")
                    status.listen()
                }, label: {
                    HStack{
                        Spacer()
                    Text("Sign In").foregroundColor(.white)
                        Spacer()
                    }
                })
                    .frame(height: 45)
                    .background(Color.red)
                    .cornerRadius(22.5)
                Spacer()
                HStack{
                    Text("Don't have an account?").foregroundColor(.blue)
                        NavigationLink(destination: {
                            SignUp()
                        }, label: {
                            Text("Sign Up").font(.system(size: 18))
                        })
                        .foregroundColor(.blue)
                }
            }
            .padding()
            .navigationBarTitle("Instagram",displayMode: .inline)
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
