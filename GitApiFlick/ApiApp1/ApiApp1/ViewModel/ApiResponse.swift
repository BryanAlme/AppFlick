//
//  ApiResponse.swift
//  ApiApp1
//
//  Created by Bryan Andres  Almeida Flores on 04/05/2022.
//

import Foundation

struct ApiResponse : Codable {
    let results : [Photos]
    
}

struct Photos : Codable {
    
    let id : Int?
    let owner : String?
    let secret : String?
    let server : Int?
    let farm : Int?
    let title: Int?
    let ispublic : Int?
    let isfriend : Int?
    let isfamily : Int?
    let urls : URL
    
}

struct URL : Codable {
    let full : String
}
