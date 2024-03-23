//
//  CartButton.swift
//  ShopApp
//
//  Created by Devavrat Upadhyay on 22/03/24.
//

import SwiftUI

struct CartButton: View {
    var numberofProduct :Int
    var body: some View {
        ZStack(alignment:.topTrailing){
            Image(systemName: "cart")
                .padding(.top,5)
            if numberofProduct > 0{
                Text("\(numberofProduct)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(Color(hue: 1.0, saturation: 0.889, brightness: 0.874))
                    .cornerRadius(50)
            }
        }
    }
}

#Preview {
    CartButton(numberofProduct: 1)
}
