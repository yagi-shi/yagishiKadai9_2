//
//  ModalView.swift
//  kadai9_2
//
//  Created by 八木佑樹 on 2024/06/28.
//

import SwiftUI

struct ModalView: View {

    // .presentationModeにてModalがtrueとなっている情報を取得し変数に格納
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedPrefecture: String?

    let prefectures: [String] = [
        "東京都",
        "神奈川県",
        "埼玉県",
        "千葉県"
    ]

    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                ForEach(prefectures, id: \.self) { prefecture in
                    Button(prefecture) {
                        selectedPrefecture = prefecture
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarItems(leading: Button("Cancel") {
                // dismissを用いて、true->falseに値を更新し、モーダルを閉じる
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

 #Preview {
     ModalView(selectedPrefecture: Binding<String?>.constant(nil))
 }
