//
//  ModalView.swift
//  kadai9_2
//
//  Created by 八木佑樹 on 2024/06/28.
//

import SwiftUI

struct ModalView: View {
    
    //.presentationModeにてModalがtrueとなっている情報を取得し変数に格納
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedPrefecture : String
    
    var body: some View {
        
        NavigationStack{
            VStack(spacing: 50) {
                Button("東京都"){
                    selectedPrefecture = "東京都"
                    presentationMode.wrappedValue.dismiss()
                    print("test")
                }
                Button("神奈川県"){
                    selectedPrefecture = "神奈川県"
                    presentationMode.wrappedValue.dismiss()
                }
                Button("埼玉県"){
                    selectedPrefecture = "埼玉県"
                    presentationMode.wrappedValue.dismiss()
                }
                Button("千葉県"){
                    selectedPrefecture = "千葉県"
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarItems(leading: Button("Cancel"){
                //dismissを用いて、true->falseに値を更新し、モーダルを閉じる
                presentationMode.wrappedValue.dismiss()
            })
            
        }
    }
}

//#Preview {
//    ModalView()
//}
