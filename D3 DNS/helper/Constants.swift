//
//  Constants.swift
//  D3 DNS
//
//  Created by Jay on 19/07/2020.
//

import Foundation
import SwiftUI

struct Constants {
    static let server = "18.133.72.57"
    static let appName = "D3 DNS"
    static let start = "Start"
    static let stop = "Stop"

    struct colors {
        static let white = Color.white
        static let gray = Color.gray
        static let start = Color.blue
        static let stop = Color.red
    }

    struct dns {
        static let providerConfiguration = ["d3.0x29a.ml": server]
    }
    
    struct images {
        static let background = "background"
        static let logo = "logo"
        static let loader = "loader"
    }

    struct screens {
        static let width = UIScreen.main.bounds.size.width
    }
}
