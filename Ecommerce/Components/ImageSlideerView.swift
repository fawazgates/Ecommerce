//
//  ImageSlideerView.swift
//  Ecommerce
//
//  Created by User on 17/03/24.
//

import SwiftUI

struct ImageSlideerView: View {
    @State private var currentIndex = 0
    
    var slides: [String] = ["int2","int3","int4"]
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 150)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            
            HStack {
                ForEach(0 ..< slides.count) { index in
                    Circle()
                        .fill(self.currentIndex == index ? Color(.systemGray) : Color(.systemGray3))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                if self.currentIndex + 1 == self.slides.count {
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
    }
}

#Preview {
    ImageSlideerView()
}
