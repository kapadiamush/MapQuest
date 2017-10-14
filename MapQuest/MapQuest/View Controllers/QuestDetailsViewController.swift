//
//  QuestDetailsViewController.swift
//  MapQuest
//
//  Created by Mushaheed Kapadia on 10/14/17.
//  Copyright © 2017 Mushaheed Kapadia. All rights reserved.
//

import UIKit

class QuestDetailsViewController: UIViewController {

    @IBOutlet weak var questDescriptionLabel: UILabel!
    @IBOutlet weak var questStateLabel: UILabel!
    @IBOutlet weak var questNameLabel: UILabel!
    
    var quest: Quest! {
        didSet {
            view.layoutIfNeeded()
            
            questNameLabel.text = quest.name
            questStateLabel.text = Quest.getStringFromState(state: quest.state)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
