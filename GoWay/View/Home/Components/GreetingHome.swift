//
//  GreetingHome.swift
//  GoWay
//
//  Created by Gustavo Hoze Ercolesea on 26/03/25.
//

import SwiftUI

struct GreetingHome: View {
    var greeting : String
    var body: some View {
        VStack{
            Text("\(greeting),")
                .foregroundStyle(.black)
                .font(.system(size: 20))
              .fontWeight(.regular)
              .frame(maxWidth:.infinity, alignment: .leading)
            
            Text("Ready to Explore GOP?")
                .foregroundStyle(.black)
                .font(.system(size:24))
              .fontWeight(.bold)
              .frame(maxWidth:.infinity, alignment: .leading)
            
        }.padding(.horizontal, 24)
    }
}

#Preview {
    GreetingHome(greeting: getGreeting())
}
