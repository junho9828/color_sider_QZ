//
//  ViewController.swift
//  ColorSliderQuiz
//
//  Created by Jaehoon Lee on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var test_sl: UISlider!
    @IBOutlet weak var COLOR: UIView!
    @IBOutlet weak var BLUE_SL: UISlider!
    @IBOutlet weak var GREAN_SL: UISlider!
    @IBOutlet weak var RED_SL: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func slchanged(_ sender: Any) {
        let red = CGFloat(RED_SL.value)
        let grean = CGFloat(GREAN_SL.value)
        let blue = CGFloat(BLUE_SL.value)
        
        COLOR.backgroundColor = UIColor(red: red,green: grean, blue: blue, alpha: 1.0)
        
    
    }
    @IBAction func onOFFchaged(_ sender: UISwitch) {
        if sender.isOn{
        test_sl()
            
        } else {COLOR.backgroundColor = UIColor.gray}
        GREAN_SL.isEnabled=sender.isOn
        RED_SL.isEnabled=sender.isOn
        BLUE_SL.isEnabled=sender.isOn
    }
    // 나머지 코드를 채우시오.


}

