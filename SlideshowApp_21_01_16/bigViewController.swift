//
//  bigViewController.swift
//  SlideshowApp_21_01_16
//
//  Created by user on 2021/01/17.
//  Copyright © 2021 takeshi-2983. All rights reserved.
//

import UIKit

class bigViewController: UIViewController {
    @IBOutlet weak var ImageWindow_Up: UIImageView!
    
    var count_1 = 0
    
    func syori2() {
        switch count_1 {
        case 1:
            ImageWindow_Up.image = UIImage(named:"Image1")
        case 2:
            ImageWindow_Up.image = UIImage(named:"Image2")
        case 3:
            ImageWindow_Up.image = UIImage(named:"Image3")
        case 4:
            ImageWindow_Up.image = UIImage(named:"Image4")
        case 0:
            break
        default:
            ImageWindow_Up.image = UIImage(named:"Image1")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        syori2()
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


