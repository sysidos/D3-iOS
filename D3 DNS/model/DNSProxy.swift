//
//  DNSProxy.swift
//  D3 DNS
//
//  Created by Jay on 19/07/2020.
//

import Foundation
import NetworkExtension

class DNSProxy: ObservableObject {
    @Published var isRunning = false
    let dnsProxy = NEDNSProxyManager.shared()
    var providerProtcol: NEDNSProxyProviderProtocol?
    
    func startVPN(){
        if(isRunning){
            isRunning = false
            dnsProxy.isEnabled = false
            return
        }
        isRunning = true
        dnsProxy.isEnabled = true
    }
    
    init() {
        providerProtcol?.providerConfiguration = Constants.dns.providerConfiguration
        dnsProxy.providerProtocol = providerProtcol
        dnsProxy.localizedDescription = Constants.appName
        
        checkStatus()
        startVPN()
    }
    
    func checkStatus(){
        if(dnsProxy.providerProtocol !== providerProtcol && !dnsProxy.isEnabled){
           isRunning = false
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
