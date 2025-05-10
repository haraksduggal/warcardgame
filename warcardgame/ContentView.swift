//
//  ContentView.swift
//  warcardgame
//
//  Created by Haraks Kaur Duggal on 28/07/24.

import SwiftUI

struct ContentView: View {
    
    
    @State var playercard = "card7"
    @State var cpucard="card13"
    
    @State var playerscore=0
    @State var cpuscore=0
    
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
            .ignoresSafeArea()
            
            VStack{
                Image("logo")                         //insetion of an image
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)               //insetion of an image
                    Spacer()                        //eventually spaces out the images or the text
                    Image(cpucard)                 //insetion of an image
                    Spacer()
                    
                }
                Spacer()                  //eventually spaces out the images or the text
                
                Button {
                    Deal()
                } label: {
                    Image("button")          //insetion of an image
                }
                
                Spacer()                    //eventually spaces out the images or the text
            
                HStack{                             //Htack is horizontal stack
                    Spacer()
                    VStack{                         //Vtack is vertical stack
                        Text("Player")
                            .font(.headline)                   //font customization
                            .padding (.bottom, 10.0)
                        Text(String(playerscore))
                            .font(.largeTitle)
                            
                        
                    }
                    Spacer()                   //eventually spaces out the images or the text
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding (.bottom, 10.0)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                }
                    
                    .foregroundColor(.white)
                    Spacer()
                   
            }
        }
        
    }
    
    func Deal()
    {
        //randomizes the player cards
        var playercardvalue=Int.random(in: 2...14)
        playercard = "card" + String(playercardvalue)
        
        //randomizes the player cards
        var cpucardvalue=Int.random(in: 2...14)
        cpucard = "card" + String(cpucardvalue)
        
        //update the scores
        if playercardvalue > cpucardvalue
        {
            //add 1 to playercore
            playerscore += 1
        }
        else if cpucardvalue > playercardvalue {
            //add 1 to cpucore
            cpuscore += 1
        }
        
        else{
            //tie
            playerscore += 1
            cpuscore += 1
        }
        
    }
    
}

#Preview {
    ContentView()
}
