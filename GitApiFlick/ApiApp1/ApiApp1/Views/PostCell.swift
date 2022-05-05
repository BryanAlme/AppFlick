//
//  CustomeCell.swift
//  ApiApp1
//
//  Created by Bryan Andres  Almeida Flores on 04/05/2022.
//

import Foundation
import UIKit


class PostCell: UITableViewCell {
    
    static let identifier = "PostCell"

    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .blue
        label.numberOfLines = 0
        return label
    }()
    
    private let bodyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(bodyLabel)
        
        let safeArea = contentView.safeAreaLayoutGuide
        
        nameLabel.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        
        bodyLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
        bodyLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        bodyLabel.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        bodyLabel.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        
    }
    
    func configureCell(name: String, body: String) {
        nameLabel.text = name
        bodyLabel.text = body
    }
    
}



