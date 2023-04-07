//
//  BottomNavBar.swift
//  Shopping_App_ApplePay
//
//  Created by Mustafa Kılınç on 8.04.2023.
//

import SwiftUI

struct BottomNavBarItem: View{
    let image: Image
    let action: () -> Void
    
    var body: some View{
        Button(action: action){
            image.frame(maxWidth: .infinity)
        }
    }
}

struct BottomNavigationBar: View {
    var body: some View {
        HStack{
            
            BottomNavBarItem(image: Image(systemName: "house"), action: {})
            BottomNavBarItem(image: Image(systemName: "basket.fill"), action: {})
            BottomNavBarItem(image: Image(systemName: "star.fill"), action: {})
            BottomNavBarItem(image: Image(systemName: "person.fill"), action: {})
            
        }
        .padding()
        .background(Color.white)
        .clipShape(Capsule())
        .padding(.horizontal)
        .shadow(color: Color.black.opacity(0.15), radius: 8, x:2, y:6)
        .foregroundColor(Color.brown)
    }
}

struct BottomNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationBar()
    }
}
