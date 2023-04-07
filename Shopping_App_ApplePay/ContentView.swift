//
//  ContentView.swift
//  Shopping_App_ApplePay
//
//  Created by Mustafa Kılınç on 7.04.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @StateObject var cartManager: CartManager
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20)]

    var body: some View {
        
        ZStack {
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 20){
                        ForEach(productList, id: \.id){ product in
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                    .padding()
                }
                .navigationTitle(Text("Sweaterd Shop"))
                .toolbar{
                    NavigationLink{
                        CardView()
                            .environmentObject(cartManager)
                    }label: {
                        CardButton(numberOffProduct: cartManager.products.count)
                    }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            
            VStack{
                Spacer()
                BottomNavigationBar()
            }
        }
        

    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cartManager: CartManager())
    }
}
