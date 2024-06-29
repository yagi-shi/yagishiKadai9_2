//
//  ContentView.swift
//  kadai9_2
//
//  Created by 八木佑樹 on 2024/06/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var prefecture = "未選択"
    @State var isShowModal = false
    
    var body: some View {
        //横並びで等間隔に表示
        HStack (spacing: 100){
            Text("都道府県")
            Text(prefecture)
            Button("変更"){
                isShowModal = true
            }
            .fullScreenCover(isPresented: $isShowModal){
                ModalView(selectedPrefecture: $prefecture)
            }
        }
        VStack{
            //下にスペースを設けるイメージ
            Spacer()
        }
    }
}


#Preview {
    ContentView()
}
