//
//  RootsCalculatingView.swift
//  FindTheRoots
//
//  Created by Tom Wu on 2023-01-24.
//

import SwiftUI

struct RootsCalculatingView: View {
    var body: some View {

        VStack{
            HStack{
                Text("Find the Roots")
                    .font(Font.custom("Times New Roman",
                                      size: 24.0,
                                      relativeTo: .body))
                Spacer()
            }
            Image("CalculateX")
                .resizable()
                .frame(width: 250,height: 100)
            Image("Polynomial")
                .resizable()
                .frame(width: 200, height: 90)
            .padding()
            Spacer()
        }
    }
}

struct RootsCalculatingView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatingView()
    }
}
