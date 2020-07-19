//
//  ContentView.swift
//  D3 DNS
//
//  Created by Jay on 19/07/2020.
//

import SwiftUI
import SSSwiftUIGIFView

struct ContentView: View {
    @ObservedObject var dnsProxy = DNSProxy()
    var body: some View {
        VStack {
            Image(Constants.images.background)
                .frame(width: 150, height: 0, alignment: .center)
            
            VStack{
                Spacer()
                Image(Constants.images.logo)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 400.0)
                Text("\(Constants.server)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                Spacer(minLength: 1.0)
                Button(action: dnsProxy.startVPN) {
                    if(!dnsProxy.isRunning){
                        Text("\(Constants.start)")
                    }else{
                        Text("\(Constants.stop)")
                    }
                }
                .frame(width: 150, height: 40, alignment: .center)
                .background(dnsProxy.isRunning ? Constants.colors.stop : Constants.colors.start)
                .foregroundColor(Color.white)
                .cornerRadius(10.0)
                .padding(20)
                Spacer()
                
                if(dnsProxy.isRunning){
                    SwiftUIGIFPlayerView(gifName: Constants.images.loader)
                        .frame(width: 100, height: 50, alignment: .center)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                }
                
            }
                
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
            ContentView()
                .previewDevice("iPhone 8")
        }
    }
}
