//
//  UserRw.swift
//  SwiftUIDemo
//
//  Created by Thomas Ricouard on 04/06/2019.
//  Copyright © 2019 Thomas Ricouarf. All rights reserved.
//

import SwiftUI

struct UserRow : View {
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                Image(user.imageName)
                    .clipShape(Circle())
                    .aspectRatio(contentMode: ContentMode.fit)
                    .frame(width: 50, height: 50)

                VStack {
                    Text(user.name)
                    Text(user.username)
                }
            }
        }
    }
}

#if DEBUG
struct UserRw_Previews : PreviewProvider {
    static var previews: some View {
        UserRow(user: sampleData[0])
    }
}
#endif
