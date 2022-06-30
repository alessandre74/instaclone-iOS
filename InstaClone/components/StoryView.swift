//
//  StoryView.swift
//  InstaClone
//
//  Created by Alessandre Livramento on 30/06/22.
//

import SwiftUI

struct StoryView: View {
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack (spacing: 20) {
        ForEach(storyItens){ item in
          VStack {
            if item.id == 1 {
              
              ZStack {
                Image(item.photo)
                  .resizable()
                  .frame(width: 62, height: 62)
                  .clipShape(Circle())
                
                Image(systemName: "plus.circle.fill")
                  .resizable()
                  .frame(width: 18, height: 18)
                  .foregroundStyle(.white , .blue)
                  .symbolRenderingMode(.palette)
                  .position(x: 50, y: 45)
                  .background(
                    Circle()
                      .fill(Color.white)
                      .frame(width: 24, height: 24)
                      .position(x: 50, y: 45)
                  )
              }
              
              Text("Seu story")
                .font(.caption2)
            } else {
              Image(item.photo)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .padding(4)
                .background(Circle().stroke(LinearGradient(colors: [.red, .yellow], startPoint: .topLeading, endPoint: .bottomLeading), lineWidth: 2))
              
              Text("\(item.name)")
                .font(.caption2)
              
            }
          }
          .padding([.vertical], 4)
        }
      }
      .padding([.horizontal], 12)
    }
  }
}

struct StoryView_Previews: PreviewProvider {
  static var previews: some View {
    StoryView()
  }
}
