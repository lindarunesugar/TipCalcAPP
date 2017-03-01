//
//  TipCalcViewController.swift
//  小費計算App
//
//  Created by Huang Pi-Ling on 2017/3/2.
//  Copyright © 2017年 Huang Pi-Ling. All rights reserved.
//

import UIKit

class TipCalcViewController: UIViewController
{

    
    @IBOutlet weak var money: UITextField!
    
    @IBOutlet weak var tip: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func calc(_ sender: Any)
    {
        if money.text! == " " || tip.text! == " "
        {
            result.text! = "0"
        }
        else
        {
            let outcome = Double(money.text!)!*(Double(tip.text!)!*0.01+1)
            result.text = String(outcome)
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        result.text! = "0"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
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
