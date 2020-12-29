//
//  TCCarTypeView.swift
//  CarForSwiftUI
//
//  Created by cynfenghanxing on 2020/12/22.
//

import SwiftUI

struct TCCarTypeView: View {
    @Binding var datas: [TCHomePageListChildren]
    var body: some View {
        let columns: [GridItem] = Array(repeating: .init(.fixed((DeviceWidth-70)/4.0)), count: 4)
        LazyVGrid(columns: columns,spacing:10) {
            ForEach(datas) { item in
                Text(item.title ?? "")
                    .lineLimit(1)
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
                    .font(.system(size: 12, weight: .light))
                    .frame(width:(DeviceWidth-70)/4.0)
                    .background (
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(BlueColor_Back)
                    )
            }
        }
//        .background(Color.blue)
        .fixedSize()
    }
}

struct TCCarTypeView_Previews: PreviewProvider {
    @State static private var datas = [TCHomePageListChildren(data: nil, image: "", subTitle: "subtitle", title: "title")]
    static var previews: some View {
        TCCarTypeView(datas: $datas)
    }
}