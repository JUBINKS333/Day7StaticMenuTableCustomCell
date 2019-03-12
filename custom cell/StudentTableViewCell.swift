//
//  StudentTableViewCell.swift
//  Day7StaticMenuTableCustomCell
//
//  Created by MacStudent on 2019-03-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblstudentName: UILabel!
    
    @IBOutlet weak var lblstudentlastname: UILabel!
    
    @IBOutlet weak var lblGender: UILabel!
    
    @IBOutlet weak var lblResult: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
