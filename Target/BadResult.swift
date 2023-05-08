//
//  BadResult.swift
//  Target
//
//  Created by junior leoncio on 07/05/23.
//

import SwiftUI

struct BadResult: View {
    @EnvironmentObject var targetGame: TargetGame
  
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Infelizmente você perdeu, tente novamente!")
                .font(.title)
                .multilineTextAlignment(.center)
            
            Text("😢")
                .font(.system(size: 150))
             
                
          
            
            Spacer()
        }
        .padding()
       
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        BadResult()
    }
}
