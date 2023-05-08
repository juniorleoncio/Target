//
//  ContentView.swift
//  Target
//
//  Created by junior leoncio on 07/05/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var targetGame: TargetGame
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("TARGET")
                .font(.system(size: 45, design: .rounded))
                .padding(.bottom, 12)
            
            Text("Deslize o marcador até o ponto que você acha corresponder ao número gerado abaixo. Será que você consegue?")
                .font(.title2).fontDesign(.rounded)
                .multilineTextAlignment(.center)
                .padding(.bottom, 30)
            
                        
            Text("\(targetGame.numberGenerate)")
                .font(.system(size: 90, design: .rounded))
                
            
            
            Slider(value: Binding<Double>(
                get: { Double(targetGame.speed) },
                set: { targetGame.speed = Int($0) }
            ), in: 0...100) { editing in
                targetGame.isEditing = editing
            }
            .background(Color(.systemGray).opacity(0.2))
            .cornerRadius(20)
     
            
            
            
            
            
            Spacer()
            
      
            
            Button { targetGame.verify()} label: {
                Text("Confirmar")
                    .font(.headline).fontDesign(.rounded)
                    .frame(maxWidth: .infinity)
                    
                    
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .sheet(isPresented: $targetGame.isPresenting) {
                if targetGame.result == 1 {
                    GoodResult()
                        .presentationDetents([.fraction(0.5)])
                        .onDisappear {
                            targetGame.generate()
                        }
                } else if targetGame.result == 2 {
                    BadResult()
                        .presentationDetents([.fraction(0.5)])
                        .onDisappear {
                            targetGame.generate()
                        }
                }
            }
            
            
            
            Spacer()
        }
        .padding()
        .onAppear {
            targetGame.generate()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TargetGame())
    }
}
