//
//  todayTableViewCell.swift
//  Haksik_HYU
//
//  Created by 최영우 on 2024. 2. 22..
//

import UIKit
class todayTableViewCell: UITableViewCell {
    static let identifier = "todayTableViewCell"
    
    var menuname = UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addContentView()
    }
    
    required init?(coder : NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addContentView() {
        contentView.addSubview(menuname)
        menuname.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            menuname.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 10),
            menuname.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
        ])
    }
}
