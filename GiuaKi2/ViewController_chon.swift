//
//  ViewController_chon.swift
//  GiuaKi2
//
//  Created by Huỳnh Thanh Tuấn on 12/16/16.
//  Copyright (c) 2016 Huỳnh Thanh Tuấn. All rights reserved.
//

import UIKit

class ViewController_chon: UIViewController {
    
    var dungchung:NSUserDefaults!
    var cau=0
    let Mang:[String] = ["eighth","fifth","first","fourth","ninth","second","seventh","sixth","tenth","third","cheetah","elephant","giraffe","hyena","hyppopotamus","leopard","lion","lioness","rhinoceros","zebra","cafeteria","campus","canteen","dormitory","laboratory","lecturer","library","locker","professor","student"]
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var text: UITextField!
    
    @IBAction func bnt_next(sender: AnyObject) {
        if(text.text == Mang[cau])
        {
            cau++
            image.image=UIImage(named: Mang[cau]+".png")
        }
        else
        {
            cau=0
            image.image=UIImage(named: Mang[cau]+".png")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dungchung=NSUserDefaults.standardUserDefaults()
        image.image = UIImage(named: Mang[cau]+".png")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
