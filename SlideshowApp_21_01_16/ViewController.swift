//
//  ViewController.swift
//  SlideshowApp_21_01_16
//
//  Created by user on 2021/01/16.
//  Copyright © 2021 takeshi-2983. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var susumu_out: UIButton!
    
    @IBOutlet weak var modoru_out: UIButton!
    
    @IBOutlet weak var saisei_out: UIButton!
    
    @IBOutlet weak var imageWindow: UIImageView!
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }
    
    var timer_sec: Float = 0
    var count = 0
    var saisei_count = 0
    var timer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
    
    func syori1() {
        switch count {
        case 1:
            imageWindow.image = UIImage(named:"Image1")
        case 2:
            imageWindow.image = UIImage(named:"Image2")
        case 3:
            imageWindow.image = UIImage(named:"Image3")
        case 4:
            imageWindow.image = UIImage(named:"Image4")
        default:
            imageWindow.image = UIImage(named:"Image1")

        }
    }
    
    @IBAction func susumu(_ sender: Any) {
        count += 1
        syori1()
        
        if count == 5 {
            count = 1
        }
    }
        
    
    @IBAction func modoru(_ sender: Any) {
        count -= 1
        syori1()
        
        if count == 0 {
            imageWindow.image = UIImage(named:"Image4")
            count = 4
        }
    }
    
    
    @IBAction func saisei(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        }
        
        susumu_out.isEnabled = false
        modoru_out.isEnabled = false
        saisei_out.setTitle("停止", for: .normal)
        
        saisei_count += 1
        
        if saisei_count == 2 {
            if self.timer != nil {
                self.timer.invalidate()
                self.timer = nil
            }
            susumu_out.isEnabled = true
            modoru_out.isEnabled = true
            saisei_count = 0
            saisei_out.setTitle("再生", for: .normal)
        }
    }
    
    @objc func updateTimer(_ timer:Timer) {
        count += 1
        syori1()
        if count == 5 {
            imageWindow.image = UIImage(named:"Image1")
            count = 1
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let BigViewController: bigViewController = segue.destination as! bigViewController
        BigViewController.count_1 = count
    }
}

