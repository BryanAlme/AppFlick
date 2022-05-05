//
//  ModelViewModel.swift
//  ApiApp1
//
//  Created by Bryan Andres  Almeida Flores on 04/05/2022.
//

//import Foundation
//import Combine
//
//protocol ViewControllerViewModelProtocol {
//    var totalRows: Int { get }
//    var publisherStories: Published<[Photos]>.Publisher { get }
//    func getStories()
//    func getTitle(by row: Int) -> String?
//    func get(by rowb : Int) -> String?
//}
//
//class ModelViewModel : ViewControllerViewModelProtocol {
//    
//    
//    var totalRows: Int { stories.count }
//    var publisherStories: Published<[Photos]>.Publisher { $stories }
//    
//    private let networkManager: NetworkManager
//    private var subscribers = Set<AnyCancellable>()
//    @Published private(set) var stories = [Photos]()
//    
//    init(networkManager: NetworkManager) {
//        self.networkManager = networkManager
//    }
//    
//    func getStories() {
//        networkManager
//            .getModel(Photos.self, from: NetworkURLs.BaseJson)
//            .sink { completion in
//                switch completion {
//                case .finished:
//                    break
//                case .failure(let error):
//                    print(error.localizedDescription)
//                }
//            } receiveValue: { [weak self] response in
//                
//              //  let temp = { $0.data }
//               // self?.stories = temp
//            }
//            .store(in: &subscribers)
//
//
//    }
//    
//    func getTitle(by row: Int) -> String? {
//        let story = stories[row]
//        return story.title
//    }
//    
//}
