//
//  ViewController.swift
//  Finance Mobile App UI
//
//  Created by Prasadi Harischandra on 7/20/20.
//  Copyright © 2020 Prasadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var BackgroundImg1: UIImageView!
    @IBOutlet weak var DataCard: UIView!
    @IBOutlet weak var ShadowViewForDataCard: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "FinanceTableViewCell", bundle: nil), forCellReuseIdentifier: "FinanceTableViewCell")
        self.tableView.estimatedRowHeight = 250
        self.tableView.rowHeight = UITableView.automaticDimension
        
        self.ShadowViewForDataCard.dropShadow()
        self.DataCard.dropShadow()
        
       
        
//        self.tableView.dropShadow()
//        self.tableView.dropShadow()
        
        
    }
   
}

extension UIView {
func dropShadow(scale: Bool = true) {
    self.layer.masksToBounds = false
  self.layer.shadowColor = UIColor.black.cgColor
    self.layer.shadowOpacity = 0.3
  self.layer.shadowOffset = CGSize(width: 1, height: 1)
  self.layer.shadowRadius = 5

//  self.layer.shadowPath = UIBezierPath(rect: bounds).cgPath
//  self.layer.shouldRasterize = true
//  self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
}


}




extension ViewController: UITableViewDelegate, UITableViewDataSource {
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FinanceTableViewCell", for: indexPath) as! FinanceTableViewCell
        
//        cell.layer.masksToBounds = false
//        cell.layer.shadowColor = UIColor.black.cgColor
//          cell.layer.shadowOpacity = 0.3
//        cell.layer.shadowOffset = CGSize(width: 1, height: 1)
//        cell.layer.shadowRadius = 10
        
        
    
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    

       
//       func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 5.0
//       }
//
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 5.0
//    }
}




