//
//  MainView.swift
//  IShop
//
//  Created by Ник К on 04.02.2024.
//


//Этот экран вообще не нужен, нужно сделать так, чтобы приложение запускалось с CardView, а этот экран удалить
import SwiftUI

struct MainView: View {
    
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                header()
            }
        }
    }
    
    @ViewBuilder
    private func header() -> some View {
        
        VStack(spacing: 18) {
            //TextField
        
            HStack {
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search...", text: $text)
                }
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                
                //Button
                Button {
                    print("filter")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color.white)
                        Image(systemName: "slider.horizontal.3")
                    }
                }
                
            }
           
        }
        .padding()
        
//        ScrollView(.horizontal, showsIndicators: false){
//            HStack {
//                ForEach(Model.reviews){ item in
//                    CardView(item1: item1)
//                }
//            }
//        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
