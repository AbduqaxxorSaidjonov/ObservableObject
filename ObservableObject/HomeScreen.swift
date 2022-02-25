//
//  HomeScreen.swift
//  ObservableObject
//
//  Created by Abduqaxxor on 25/2/22.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    UserDefaults.standard.removeObject(forKey: "userid")
                    status.listen()
                }, label: {
                    Text("Logout")
                })
                    .foregroundColor(.red)
                
            }
            .navigationBarTitle("Instagram",displayMode: .inline)
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
            .foregroundColor(.red)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
