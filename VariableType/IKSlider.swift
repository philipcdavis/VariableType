//
//  IKSlider.swift
//  VariableType
//
//  Created by Philip Davis on 6/9/22.
//

import SwiftUI

struct IKSlider: View {
    @Binding var value: Double
    let min: Double
    let max: Double
    let increment: Double
    let minLabel: String
    let maxLabel: String
    
    
    var body: some View {
        VStack {
            
            
            ZStack {
                Slider(
                    value: $value,
                    in: min...max,
                    step:increment
                ).tint(.yellow)
            }
            
            
            HStack {
                
                
                Text(minLabel).foregroundColor(.white.opacity(0.6))
                Spacer()
                Text(maxLabel).foregroundColor(.white.opacity(0.6))
                
                
            }
            
        }.padding(20)
            .background(.white.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        
    }
}

