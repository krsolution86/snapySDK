//
//  ViewController.swift
//  Testfunction
//
//  Created by Dev Singh on 03/07/18.
//  Copyright © 2018 Octatrades. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let hud = MBProgressHUD()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hud.center=self.view.center;
        self.view .addSubview(hud);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actbtn_StartIndicator(_ sender: Any) {
        let  btn = sender as! UIButton
        
        if (btn.isSelected){
            btn.isSelected=false
        hud.hide(animated: true)
        }else{
            btn.isSelected=true;
            hud.show(animated: true)
        }
        
        
    }
    
}

