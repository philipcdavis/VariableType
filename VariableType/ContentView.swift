//
//  ContentView.swift
//  VariableType
//
//  Created by Philip Davis on 6/9/22.
//

import SwiftUI
import UIKit

extension UIFont {
    func withOptions(weight: Double, width: Double) -> UIFont {
        let newDescriptor = fontDescriptor.addingAttributes([.traits: [
            UIFontDescriptor.TraitKey.weight: weight,
            UIFontDescriptor.TraitKey.width: width,
        ]
                                                            ])
        return UIFont(descriptor: newDescriptor, size: pointSize)
    }
}

struct ContentView: View {
    @State private var fontWeight = 0.0
    @State private var fontWidth = 0.0
    @State private var fontSlant = 0.0
    @State private var fontSize = 40.0
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(alignment: .leading) {
                Text("Variable Type").font(Font(UIFont.systemFont(ofSize: fontSize).withOptions(weight: fontWeight, width: fontWidth)))
                    .animation(.linear(duration: 0.07), value: [fontWeight])
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 300)
                    .foregroundColor(.white)
                Spacer()
                VStack(spacing: 16) {
                    IKSlider(value: $fontWeight, min: -1.0, max: 1.0, increment: 0.1, minLabel: "Light", maxLabel: "Heavy")
                    
                    IKSlider(value: $fontSize, min: 24, max: 220, increment: 1.0, minLabel: "Small", maxLabel: "Large")
                    IKSlider(value: $fontWidth, min: -1.0, max: 1.0, increment: 0.1, minLabel: "Condensed", maxLabel: "Expanded")
                }.padding(.bottom, 120)
                
            
                    
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
