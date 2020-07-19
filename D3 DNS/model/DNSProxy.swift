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
    static let dnsProxy = NEDNSProxyManager.shared()
    
    func startVPN(){
        
    }

}
