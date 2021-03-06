//
//  TestProxy.swift
//  PureMVC SWIFT Multicore
//
//  Copyright(c) 2015-2025 Saad Shams <saad.shams@puremvc.org>
//  Your reuse is governed by the Creative Commons Attribution 3.0 License
//

import PureMVC

class ResourceProxy: Proxy {
    
    init(data: Resource) {
        super.init(proxyName: Proxy.NAME, data: data)
    }
    
    deinit {
        (data as! Resource).state = .RELEASED
    }
    
}
