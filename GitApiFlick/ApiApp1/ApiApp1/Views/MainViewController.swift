//
//  ViewController.swift
//  ApiApp1
//
//  Created by Bryan Andres  Almeida Flores on 04/05/2022.
//
//import UIKit
//
//
//class ViewController: UIViewController {
//    
//    private let networkManager = NetworkManager()
//    private var posts = [Photos]()
//    
//    private lazy var tableView: UITableView = {
//        let tableView = UITableView()
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.dataSource = self
//        tableView.register(PostCell.self, forCellReuseIdentifier: PostCell.identifier)
//        return tableView
//    }()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        
//        setUpUI()
//        
//        networkManager.getPost { [weak self] result in
//            switch result {
//            case .success(let posts):
//                self?.posts = posts
//                
//                DispatchQueue.main.async {
//                    self?.tableView.reloadData()
//                }
//                
//            case .failure(let error):
//                let error = error
//                print(error.localizedDescription)
//            }
//        }
//    }
//    
//    private func setUpUI() {
//        view.addSubview(tableView)
//        
//        let safeArea = view.safeAreaLayoutGuide
//        tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
//        tableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
//        tableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
//    }
//
//}
//
//extension ViewController: UITableViewDataSource {
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return posts.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let row = indexPath.row
//        let post = posts[row]
//        
//        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.identifier, for: indexPath) as! PostCell
//        cell.configureCell(name: post.title , body: post.photo)
//        return cell
//    }
//    
//}
