//
//  NetworkManager.swift
//  ApiApp1
//
//  Created by Bryan Andres  Almeida Flores on 04/05/2022.
//

import Foundation
import UIKit


class NetworkManager: UIViewController {
    
let urlString = "https://www.flickr.com/services/rest/?text=Phone&api_key=060c8bb57f264d10dc6463cce0a8f230&nojsoncallback=1&format=json&method=flickr%2Ephotos%2Esearch"
    
    var results : [Result] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPhotos()
    }
    
    func fetchPhotos(){
        guard let url = URL(full: urlString) else{
           return
           }
    let task = URLSession.shared.dataTask(with: url) { data , _,error in
        guard let data = data, error == nil else {
            return
            
        }
        do{
            let jsonResult = try JSONDecoder().decode(ApiResponse.self, from: data)
            self.results = jsonResult.results
        }
        catch{
            print(error)
        }
        print("got data") // what to see if I recieve data
    }
        task.resume()
    }
}
       
