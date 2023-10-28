//
//  SignUpView.swift
//  2204OrangeHarman
//
//  Created by Harman on 2023-10-28.
//

import Foundation
import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
