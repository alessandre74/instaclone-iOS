//
//  ContentView.swift
//  IntaClone
//
//  Created by Alessandre Livramento on 12/04/22.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopView()
            
            PostView()
            
            TabBarView()
        }
    }
}

struct TopView : View {
    var body: some View {
        HStack {
            HStack {
                Image(iconsItens.logo)
                
                Image(systemName: "chevron.down")
                                    .resizable()
                                    .frame(width: 8, height: 4)
            }
            
            Spacer()
            
            HStack(spacing: 18) {
                Image(iconsItens.add)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                Image(iconsItens.heart)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                Image(iconsItens.messenger)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
        }
        .padding(.horizontal)
    }
}

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

struct PostView : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            StoryView()
            
            Divider()
            
            ForEach(postItens){ item in
                VStack {
                    HStack  {
                        Image(item.icon)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                            .padding(4)
                            .background(Circle().stroke(LinearGradient(colors: [.red, .yellow], startPoint: .topLeading, endPoint: .bottomLeading), lineWidth: 2))
                        
                        
                        VStack (alignment: .leading) {
                            Text("\(item.name)")
                                .font(.caption2)
                                .bold()
                            
                            Text("\(item.city)")
                                .font(.caption2)
                            
                        }
                        
                        Spacer()
                        
                        Image(iconsItens.more)
                            .padding(4)
                        
                    }
                    .padding(.leading, 12)
                    .padding(.trailing,12)
                    
                    
                    Image(item.post)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    HStack {
                        Image(iconsItens.heart)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Image(iconsItens.comment)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Image(iconsItens.share)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Spacer().frame(width: 90, height: 30, alignment: .center)
                        
                        Image(iconsItens.carouseldots)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        
                        Spacer()
                        
                        Image(iconsItens.bookmark)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    }
                    .padding(.horizontal, 10)
                    
                    HStack {
                        Image(photoItens.silvana1)
                            .resizable()
                            .frame(width: 14, height: 14)
                            .clipShape(Circle())
                        
                        Text("Curtido por ")
                            .font(.caption2)
                        + Text("Silvana ")
                            .font(.caption2)
                            .bold()
                        + Text ("e")
                            .font(.caption2)
                        + Text(" outras pessoas")
                            .font(.caption2)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 12)
                    
                    HStack {
                        Text("Ver todos os 140 comentários")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 12)
                    
                    HStack {
                        Image(photoItens.alessandre)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        
                        Text("Adicione um comentário...")
                            .font(.caption2)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("❤️  🙌")
                            .font(.system(size: 10, weight: .regular))
                        
                        Image(systemName: "plusminus.circle")
                            .font(.system(size: 10, weight: .regular))
                            .foregroundColor(.gray)
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 12)
                    
                    HStack {
                        Text("Há 4 horas")
                            .font(.caption2)
                            .foregroundColor(.gray)
                        
                        Text(".")
                            .font(.caption2)
                            .frame(width: 4)
                            .offset( y: -2)
                        
                        Text ("Ver tradução")
                            .font(.caption2)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 12)
                    .padding(.bottom, 12)
                }
            }
        }
    }
}

struct TabBarView : View {
    var body: some View {
        Divider()
        
        HStack {
            
            Image(iconsItens.home)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
            
            Spacer()
            
            Image(iconsItens.search)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
            
            Spacer()
            
            Image(iconsItens.reels)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
            
            Spacer()
            
            Image(iconsItens.shop)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
            
            Spacer()
            
            Image(systemName: iconsItens.profile)
                .resizable()
                .frame(width: 20, height: 20, alignment: .center)
                .clipShape(Circle())
                .padding(.top, 3)
                .background(Circle().stroke(Color.black, lineWidth: 1.4))
        }
        .padding(.horizontal, 25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
