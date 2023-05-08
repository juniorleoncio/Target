//
//  Message.swift
//  Target
//
//  Created by junior leoncio on 07/05/23.
//

import Foundation
import SwiftUI

struct GoodResult: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Parabéns você acertou, que tal mais uma vez!")
                .font(.title)
                .multilineTextAlignment(.center)
            
            Text("😀")
                .font(.system(size: 150))
                
          
            
            Spacer()
        }
        .padding()
    }

}




struct Message_Previews: PreviewProvider {
    static var previews: some View {
        GoodResult()
            
    }
}
