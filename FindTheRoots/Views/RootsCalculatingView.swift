//
//  RootsCalculatingView.swift
//  FindTheRoots
//
//  Created by Tom Wu on 2023-01-24.
//

import SwiftUI

struct RootsCalculatingView: View {
    @State var a: Double = 7
    @State var b: Double = 7
    @State var c: Double = 7
    
    var result: String{
        let discriminant = b * b - 4 * a * c
        
        if discriminant < 0{
            return "No real roots"
        } else {
            let x1 = (b * -1 - discriminant.squareRoot()/(2*a))
            let x2 = (b * -1 + discriminant.squareRoot()/(2*a))
            
            return "x≈ \(x1.formatted(.number.precision(.fractionLength(2)))) and x≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    
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
            HStack{
                VStack{
                    HStack{
                        Text("a:")
                            .bold()
                            .font(.title2)
                        
                        Text("\(    a.formatted(.number.precision(.fractionLength(0...2))))")
                    }
                    Slider(value: $a,
                           in: -10...10,
                           step: 0.1,
                           label: {Text("a")},
                           minimumValueLabel: {Text("-10")},
                           maximumValueLabel: {Text("10")})
                    
                }
                
                VStack{
                    HStack{
                        Text("b:")
                            .bold()
                            .font(.title2)
                        Text("\(    b.formatted(.number.precision(.fractionLength(0...2))))")
                    }
                    Slider(value: $b,
                           in: -10...10,
                           step: 0.1,
                           label: {Text("b")},
                           minimumValueLabel: {Text("-10")},
                           maximumValueLabel: {Text("10")})
                }
                
                VStack{
                    HStack{
                        Text("c:")
                            .bold()
                            .font(.title2)
                        Text("\(    c.formatted(.number.precision(.fractionLength(0...2))))")
                    }
                    Slider(value: $c,
                           in: -10...10,
                           step: 0.1,
                           label: {Text("c")},
                           minimumValueLabel: {Text("-10")},
                           maximumValueLabel: {Text("10")})
                }
            }
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
