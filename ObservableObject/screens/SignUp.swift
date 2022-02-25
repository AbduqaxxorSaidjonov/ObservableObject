//
//  SignUp.swift
//  ObservableObject
//
//  Created by Abduqaxxor on 25/2/22.
//

import SwiftUI

struct SignUp: View {
    @Environment(\.presentationMode) var presentation
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            Spacer()
            TextField("Firstname",text: $firstname)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(22.5)
            TextField("Lastname",text: $lastname)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(22.5)
            TextField("Email",text: $email)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(22.5)
            TextField("Address",text: $address)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(22.5)
            SecureField("Password",text: $password)
                .frame(height: 45)
                .padding(.leading , 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(22.5)
            Button(action: {
                
            }, label: {
                HStack{
                    Spacer()
                Text("Sign Up").foregroundColor(.white)
                    Spacer()
                }
            })
                .frame(height: 45)
                .background(Color.red)
                .cornerRadius(22.5)
            Spacer()
            HStack{
                Text("Already have an account?")
                    .foregroundColor(.blue)
                Button("Sign In"){
                    presentation.wrappedValue.dismiss()
                }
                .font(.system(size: 18))
                .foregroundColor(.blue)
            }
        }.padding()
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
