//
//  ViewController.swift
//  week-2-EvrenUstun
//
//  Created by Evren Ustun on 25.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: UIButton
    @IBOutlet weak var chooseDriverButton: UIButton!
    @IBOutlet weak var chooseTeam: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navController = segue.destination as! UINavigationController
        let destController = navController.topViewController as! SelectionTableViewController
        
        if segue.identifier == "driverSegue"{
            destController.listType = .drivers
        }
        
        if segue.identifier == "teamSegue"{
            destController.listType = .teams
        }
    }
    
}

