//
//  SchoolList.swift
//  Panda-Saza
//
//  Created by Jae Heo on 2021/04/11.
//

import SwiftUI

struct SchoolList: View {
    
    @Binding var schools: [School]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SchoolList_Previews: PreviewProvider {
    static var previews: some View {
        SchoolList(schools: .constant([
            School(sId: 1, name: "Dongguk University"),
            School(sId: 2, name: "Kunkook University"),
            School(sId: 3, name: "Kyunghee University"),
            School(sId: 4, name: "Seoul University"),
            School(sId: 5, name: "Kangwon University"),
        ]))
    }
}
