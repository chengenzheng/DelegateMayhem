//
//  receivingVC.swift
//  DelegateMayhem
//
//  Created by chengen Zheng on 2017/10/11.
//  Copyright © 2017年 chengen Zheng. All rights reserved.
//

import UIKit

class receivingVC: UIViewController, DataSentDelegate{

    @IBOutlet weak var receivingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func userDidEnterData(Data: String) {
        receivingLabel.text = Data
  
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            
            let sendingVC: SendingVC = segue.destination as! SendingVC
           sendingVC.delegate = self
            
        }
    }

}


