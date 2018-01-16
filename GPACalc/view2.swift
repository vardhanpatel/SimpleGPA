//
//  view2.swift
//  MyGPA
//
//  Created by Hanuman on 11/28/17.
//  Copyright © 2017 Timodox. All rights reserved.
//

import UIKit

class view2: UIViewController {

    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label45: UILabel!
    @IBOutlet weak var overview: UILabel!
    @IBOutlet weak var youregpais: UILabel!
    
    
    override func viewDidLoad() {
        label45.numberOfLines = 0;
        [label45.sizeToFit];

        overview.adjustsFontSizeToFitWidth = true
        youregpais.adjustsFontSizeToFitWidth = true
        
        if 4.0...5.0 ~= gpa {
            self.view.backgroundColor = UIColor.green
            
            label45.text = "Great , Keep up the work. This GPA will get you $cholorships"
        }
        if 3.0...4.0 ~= gpa {
            self.view.backgroundColor = UIColor(hue: 0.475, saturation: 1, brightness: 0.94, alpha: 1.0)
            
            label45.text = "OK , Let's work a little bit and add more effort. I know you can do it"
        }
        if 2.0...3.0 ~= gpa {
            self.view.backgroundColor = UIColor(hue: 0.9694, saturation: 1, brightness: 0.97, alpha: 1.0)
            
            label45.text = "OH, This GPA is a little low, I know you can raise it up, make sure you turn in your homework on time and spend time at home for homework."
        }
        if 1.0...2.0 ~= gpa {
            self.view.backgroundColor = UIColor(hue: 0.9694, saturation: 1, brightness: 0.97, alpha: 1.0)
            
            label45.text = "UMMM, This GPA is a little low, I know you can raise it up, make sure you turn in your homework on time and spend time at home for homework."
        }
       
        
        
       
        
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        label2.text = String(gpa)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
