//
//  CircleProgress.swift
//  FinalProject
//
//  Created by Jorrin Thacker on 5/8/21.
//

import SwiftUI

struct CircleProgress: View {
    @State var cirVal: Double
    @State var voterNum: Int
    
    var purpleGradient = LinearGradient(gradient: Gradient(colors: [ Color(hex: 0x000080), Color(hex: 0xff0066) ]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        VStack {
            ZStack {
                    Circle()
                        .stroke(Color(.systemGray6), lineWidth: 10)
                        .frame(width: 90, height: 300)
                    Circle()
                        .trim(from: 0, to: CGFloat(cirVal * 0.1))
                        .stroke(purpleGradient, lineWidth: 10)
                        .frame(width: 90, height: 300)
                        .overlay(
                            VStack {
                                Text("Rating:")
                                    .font(.system(size: 20, design: .rounded))
                                    .foregroundColor(Color(.systemGray))
                                Text("\(Int(cirVal * 10))%")
                                        .font(.system(size: 20, weight: .bold, design: .rounded))
                                    .foregroundColor(Color(.systemGray))
                            }
                        )
                        .frame(width: 100, height: 100)
                }
            .frame(width: 100, height: 100)
            
            Text("Of \(voterNum) Voters ")
                    .font(.system(size: 20, design: .rounded))
                .foregroundColor(Color(.systemGray))
        }
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

struct CircleProgress_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgress(cirVal: 7.3, voterNum: 4510)
    }
}
