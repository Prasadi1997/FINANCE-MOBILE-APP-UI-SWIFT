//
//  FinanceTableViewCell.swift
//  Finance Mobile App UI
//
//  Created by Prasadi Harischandra on 7/23/20.
//  Copyright © 2020 Prasadi. All rights reserved.
//

import UIKit

class FinanceTableViewCell: UITableViewCell {
    
    //MARK: Outlets
    @IBOutlet weak var mainDetailsContainerView: UIView!
    
    @IBOutlet weak var iconContainerView: UIView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Adding shadows
        self.mainDetailsContainerView?.dropShadow()
        
        self.iconContainerView?.dropShadow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        

        // Configure the view for the selected state
    }

}
