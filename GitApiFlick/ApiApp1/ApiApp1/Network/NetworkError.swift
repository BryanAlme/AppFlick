//
//  NetworkError.swift
//  ApiApp1
//
//  Created by Bryan Andres  Almeida Flores on 04/05/2022.
//

import Foundation
import UIKit

enum NetworkError: Error {
    case badURL
    case badDecode
    case other(Error)
}
