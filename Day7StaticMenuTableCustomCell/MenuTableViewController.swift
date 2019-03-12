//
//  ViewController.swift
//  Day7StaticMenuTableCustomCell
//
//  Created by MacStudent on 2019-03-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section==0
        {
        switch indexPath.row
        {
            
            
        case 0:
            print("go to home")
            
            
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let studentDetailsVC = sb.instantiateViewController(withIdentifier: "studentDetailsVC") as! StudentInfoTableViewController
            
            self.navigationController?.pushViewController(studentDetailsVC, animated: true)
        case 1:
            print("go to products")
        case 2:
            print("go to order history")
            
        default:
            print("invalid ")
            
        }
        }
        else {
                switch indexPath.row{
                    
                    
                case 0:
                    print("go to help")
                case 1:
                    print("go to about us")
                case 2:
                    print("go to order contact us")
                case 3:
                    print("call log out")
                    
                default:
                    print("invalid ")
            }
    }

}

}


