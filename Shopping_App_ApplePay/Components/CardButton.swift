//
//  CardButton.swift
//  Shopping_App_ApplePay
//
//  Created by Mustafa Kılınç on 7.04.2023.
//

import SwiftUI

struct CardButton: View {
    var numberOffProduct: Int
    
    var body: some View {
        
        ZStack(alignment: .topTrailing){
            
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOffProduct > 0 {
                Text("\(numberOffProduct)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
            
        }
        
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton(numberOffProduct: 1)
    }
}
