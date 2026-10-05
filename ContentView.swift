//
//  ContentView.swift
//  luiss
//
//  Created by Maker-Mac01 on 05/10/26.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        NavigationStack {

            ZStack {
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.9)
                VStack(spacing: 25) {
                   
                          
                    NavigationLink("CONFIRA NOSSO ESTOQUE") {
                        segundaTela()
                    }
                    .font(.headline)
                    .fontDesign(.none)
                    .foregroundStyle(Color.white)
                    .padding(.horizontal, 25)
                    .padding(.vertical, 15)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
        }
    }
}






struct segundaTela: View {

    
    let fotos = [
        "foto1",
        "foto2",
        "foto3",
        "foto4",
        "foto5",
        
    ]

    let colunas = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        ZStack {

           
            Image("Rato")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

        

            ScrollView {

                VStack {

                    Text("RECOMENDADOS")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding(10)

                    Text("MELHORES DA SEMANA")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding(.bottom, 10)

                   
                    LazyVGrid(columns: colunas, spacing: 15) {

                        ForEach(fotos, id: \.self) { foto in

                            Image(foto)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 150)
                                .clipShape(
                                    RoundedRectangle(
                                        cornerRadius: 15
                                    )
                                )
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationTitle("ÁLBUM")
        .navigationBarTitleDisplayMode(.inline)
    }
}










#Preview {
    ContentView()
}
