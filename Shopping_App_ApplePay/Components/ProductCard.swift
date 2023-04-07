//
//  ProductCard.swift
//  Shopping_App_ApplePay
//
//  Created by Mustafa Kılınç on 7.04.2023.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .fontWeight(.bold)
                    Text("$ \(product.price).00")
                        .font(.caption)
                }.padding()
                    .frame(width: 180, alignment: .leading)
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                
            }.frame(width: 180, height: 250)
                .shadow(radius: 3)
            
            Button {
                cartManager.addToCard(product: product)
            } label: {
                
                Image(systemName: "plus")
                    .padding(7)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(20)
                    .padding()
                
            }

            
        }
        
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
