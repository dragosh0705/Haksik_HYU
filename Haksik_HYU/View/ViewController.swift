//
//  ViewController.swift
//  Haksik_HYU
//
//  Created by 최영우 on 2024. 2. 21..
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    private var topView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(displayP3Red: 14/255.0, green: 74/255.0, blue: 132/255.0, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "학식한대"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private var searchMenuText : UILabel = {
        let label = UILabel()
        label.text = "메뉴 검색"
        label.font = UIFont.systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var searchMenu: UITextField = {
        let textfield = UITextField()
        textfield.placeholder = "  메뉴 입력"
        textfield.layer.cornerRadius = 13
        textfield.layer.borderWidth = 1
        textfield.layer.borderColor = UIColor.gray.cgColor
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    private var todayMenuText : UILabel = {
        let label = UILabel()
        label.text = "오늘의 메뉴"
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var selectMenuText : UILabel = {
        let label = UILabel()
        label.text = "등록된 메뉴"
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var todayMenuTableView : UITableView = {
        let view = UITableView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var selectMenuTableView : UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(topView)
        view.addSubview(mainLabel)
        view.addSubview(searchMenuText)
        view.addSubview(searchMenu)
        view.addSubview(todayMenuText)
        view.addSubview(selectMenuText)
        view.addSubview(todayMenuTableView)
        view.addSubview(selectMenuTableView)
        todayMenuTableView.backgroundColor = UIColor.lightGray
        settodayMenuTableVIew()
        selectMenuTableView.backgroundColor = UIColor.lightGray
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: self.view.topAnchor),
            topView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            topView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            topView.heightAnchor.constraint(equalToConstant: 130)
        ])
        
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: topView.centerYAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            searchMenuText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            searchMenuText.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 50)
        ])
    
        NSLayoutConstraint.activate([
            searchMenu.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            searchMenu.topAnchor.constraint(equalTo: searchMenuText.bottomAnchor, constant: 50),
            searchMenu.widthAnchor.constraint(equalToConstant: 300),
            searchMenu.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            todayMenuText.centerXAnchor.constraint(equalTo: todayMenuTableView.centerXAnchor),
            todayMenuText.topAnchor.constraint(equalTo: searchMenu.bottomAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            selectMenuText.centerXAnchor.constraint(equalTo: selectMenuTableView.centerXAnchor),
            selectMenuText.topAnchor.constraint(equalTo: searchMenu.bottomAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            todayMenuTableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20),
            todayMenuTableView.topAnchor.constraint(equalTo: todayMenuText.bottomAnchor, constant: 30),
            todayMenuTableView.widthAnchor.constraint(equalToConstant: 160),
            todayMenuTableView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            selectMenuTableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            selectMenuTableView.topAnchor.constraint(equalTo: selectMenuText.bottomAnchor, constant: 30),
            selectMenuTableView.widthAnchor.constraint(equalToConstant: 160),
            selectMenuTableView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func settodayMenuTableVIew() {
        todayMenuTableView.delegate = self
        todayMenuTableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5  // <- Cell을 보여줄 갯수
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: todayTableViewCell.identifier, for: indexPath) as! todayTableViewCell
        return cell
    }
}
