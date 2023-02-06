//
//  ContentView.swift
//  HWswift1.10
//
//  Created by Astrid Snäll on 2/6/23.
//



import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "  "
    
    var body: some View {
        
        Text(messageString)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .foregroundColor(.red)
            .frame(height: 150)
            .frame(maxWidth: .infinity)
            .padding()
        
        Spacer()
        Button("hey there") {
            let message1 = "youre awesome"
            let message2 = "youre great"
            messageString = (messageString == message1 ? message2
                             :message1)
        }

        Button("show message") {
            let message1 = "youre awesome"
            let message2 = "youre great"
            
            //if  messageString == message1 {
               // messageString = message2
            //} else {
            messageString = (messageString == message1 ? message2
                             :message1)
            }
        .buttonStyle(.borderedProminent)
        }
        .padding()
        
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    

