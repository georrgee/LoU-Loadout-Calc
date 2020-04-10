//  AboutVC.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class AboutVC: UIViewController {
    
    let aboutTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupEntireUI()
    }
    
    private func setupEntireUI() {
        setBackgroundWithImage()
        configureNavigationBar()
        configureTableView()
    }
    
    private func configureTableView() {
        view.addSubview(aboutTableView)
        aboutTableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        aboutTableView.backgroundColor = .clear
        aboutTableView.rowHeight = 80
        aboutTableView.delegate   = self
        aboutTableView.dataSource = self
        
        aboutTableView.register(AboutCell.self, forCellReuseIdentifier: AboutCell.reuseCellID)
    }
}

extension AboutVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AboutModel.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell             = aboutTableView.dequeueReusableCell(withIdentifier: AboutCell.reuseCellID) as! AboutCell
        cell.titleLabel.text = AboutModel.list[indexPath.row].title
        let image            = AboutModel.list[indexPath.row].iconImage
        cell.configureCellImage(image: image)
        return cell
    }
}
