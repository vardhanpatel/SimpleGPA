//
//  ViewController.swift
//  GPACalc
//
//  Created by Hanuman on 6/12/17.
//  Copyright © 2017 Timodox. All rights reserved.
//

import UIKit
import AVFoundation

var gpa = Double(0)


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITableViewDelegate {
    var place1 = 0
    var place2 = 0
    var place3 = 0
    var place4 = 0
    var place5 = 0
    var place6 = 0
    var place7 = 0
    var place8 = 0
    var Player: AVPlayer!
    var PlayerLayer: AVPlayerLayer!

    var classoneg = Double(0)
    var classtwog = Double(0)
    var classthereeg = Double(0)
    var classfourg = Double(0)
    var classfiveg = Double(0)
    var classsixg = Double(0)
    var classseveng = Double(0)
    var classeight = Double(0)
    var gpadd = Double(0)
    
    
    @IBOutlet weak var onelabel: UILabel!
    @IBOutlet weak var twolabel: UILabel!
    @IBOutlet weak var threelabel: UILabel!
    @IBOutlet weak var fourlabel: UILabel!
    @IBOutlet weak var fivelabel: UILabel!
    @IBOutlet weak var sixlabel: UILabel!
    @IBOutlet weak var sevenlabel: UILabel!
    @IBOutlet weak var eightlabel: UILabel!
    @IBOutlet weak var welcomelabel: UILabel!
    @IBOutlet weak var developedlabel: UILabel!
    @IBOutlet weak var weightchooserlabel: UILabel!
    
    @IBOutlet weak var picker1: UIPickerView!
    @IBOutlet weak var picker2: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var picker3: UIPickerView!
    @IBOutlet weak var picker4: UIPickerView!
    @IBOutlet weak var picker5: UIPickerView!
    @IBOutlet weak var picker6: UIPickerView!
    @IBOutlet weak var picker7: UIPickerView!
    @IBOutlet weak var picker8: UIPickerView!
    @IBOutlet weak var eighttext: UITextField!
    @IBOutlet weak var seventext: UITextField!
    @IBOutlet weak var sixtext: UITextField!
    @IBOutlet weak var fivetext: UITextField!
    @IBOutlet weak var fourtext: UITextField!
    @IBOutlet weak var threetext: UITextField!
    @IBOutlet weak var twotext: UITextField!
    @IBOutlet weak var onetext: UITextField!
var array1 = ["AP", "Honors" , "OGL"]
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        /*
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
            case 960:
                print("iphone4s")
                /*
                onelabel.text = "1"
                twolabel.text = "2"
                threelabel.text = "3"
                fourlabel.text = "4"
                fivelabel.text = "5"
                sixlabel.text = "6"
                sevenlabel.text = "7"
                eightlabel.text = "8"
 */
      */          /*
welcomelabel.isHidden = true
                developedlabel.isHidden = true
                
            case 1136:
                print("iPhone 5 or 5S or 5C")
                welcomelabel.isHidden = true
                developedlabel.isHidden = true
            case 1334:
                print("iPhone 6/6S/7/8")
            case 2208:
                print("iPhone 6+/6S+/7+/8+")
            case 2436:
                print("iPhone X")
            default:
                print("unknown")
            }
        }
 
 
 */
                // self.view.backgroundColor = UIColor(patternImage: UIImage(named: "wallpaper3.jpg")!)

      

      /*  let URL = Bundle.main.url(forResource:"fog", withExtension: "mp4")
        Player = AVPlayer.init(url: URL!)
        PlayerLayer = AVPlayerLayer(player: Player)
        PlayerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        PlayerLayer.frame = view.layer.frame
        Player.actionAtItemEnd = AVPlayerActionAtItemEnd.none
        
        
        
        Player.play()
        view.layer.insertSublayer(PlayerLayer, at: 0)
        //NotificationCenter.default.addObserver(self, selector: #selector(ViewController.playerItemDidReachEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.player?.currentItem)
*/
      
        // Do any additional setup after loading the view, typically from a nib.
   let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)

        picker1.delegate = self
        picker1.dataSource = self

        picker2.dataSource = self
        picker2.delegate = self
        
        picker3.dataSource = self
        picker3.delegate = self
        
        picker4.dataSource = self
        picker4.delegate = self
        
        picker5.dataSource = self
        picker5.delegate = self
        
        picker6.dataSource = self
        picker6.delegate = self
        
        picker7.dataSource = self
        picker7.delegate = self
        
        picker8.dataSource = self
        picker8.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func dismissKeyboard() {
        
        view.endEditing(true)
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array1 [row]
    
    
}
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array1.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    @IBAction func clear(_ sender: Any) {
        
        onetext.text = ""
       twotext.text = ""
        threetext.text = ""
        fourtext.text = ""
        fivetext.text = ""
        sixtext.text = ""
        seventext.text = ""
        eighttext.text = ""
        label.text = ""
     
        
        
        
    }
    @IBAction func submit(_ sender: Any) {
        
        if (place1 == 0 ){
            //ap first box
            if (onetext.text == "a"){
                classoneg = 5.0
            } else if (onetext.text == "b"){
                classoneg = 4.0
            } else if (onetext.text == "c"){
                classoneg = 3.0
            } else if (onetext.text == "d"){
                classoneg = 1.0
            }else if (onetext.text == "f"){
                classoneg = 0.0
            }
            }
            else if (place1 == 1){
                if (onetext.text == "a"){
                    classoneg = 4.5
                } else if (onetext.text == "b"){
                    classoneg = 3.5
                } else if (onetext.text == "c"){
                    classoneg = 2.5
                } else if (onetext.text == "d"){
                    classoneg = 1.0
                }else if (onetext.text == "f"){
                    classoneg = 0.0
                }

            }else if(place1 == 2){
                if (onetext.text == "a"){
                    classoneg = 4.0
                } else if (onetext.text == "b"){
                    classoneg = 3.0
                } else if (onetext.text == "c"){
                    classoneg = 2.0
                } else if (onetext.text == "d"){
                    classoneg = 1.0
                }else if (onetext.text == "f"){
                    classoneg = 0.0
                }

            }
            
            if (place2 == 0 ){
                if (twotext.text == "a"){
                    classtwog = 5.0
                } else if (twotext.text == "b"){
                    classtwog = 4.0
                } else if (twotext.text == "c"){
                    classtwog = 3.0
                } else if (twotext.text == "d"){
                    classtwog = 1.0
                }else if (twotext.text == "f"){
                    classtwog = 0.0
                }

                }else if (place2 == 1){
                if (twotext.text == "a"){
                    classtwog = 4.5
                } else if (twotext.text == "b"){
                    classtwog = 3.5
                } else if (twotext.text == "c"){
                    classtwog = 2.5
                } else if (twotext.text == "d"){
                    classtwog = 1.0
                }else if (twotext.text == "f"){
                    classtwog = 0.0
                }

                }else if(place2 == 2){
                if (twotext.text == "a"){
                    classtwog = 4.0
                } else if (twotext.text == "b"){
                    classtwog = 3.0
                } else if (twotext.text == "c"){
                    classtwog = 2.0
                } else if (twotext.text == "d"){
                    classtwog = 1.0
                }else if (twotext.text == "f"){
                    classtwog = 0.0
                }

                }
            if (place3 == 0 ){
                if (threetext.text == "a"){
                    classthereeg = 5.0
                } else if (threetext.text == "b"){
                    classthereeg = 4.0
                } else if (threetext.text == "c"){
                    classthereeg = 3.0
                } else if (threetext.text == "d"){
                    classthereeg = 1.0
                }else if (threetext.text == "f"){
                    classthereeg = 0.0
                }
            }else if (place3 == 1){
                if (threetext.text == "a"){
                    classthereeg = 4.5
                } else if (threetext.text == "b"){
                    classthereeg = 3.5
                } else if (threetext.text == "c"){
                    classthereeg = 2.5
                } else if (threetext.text == "d"){
                    classthereeg = 1.0
                }else if (threetext.text == "f"){
                    classthereeg = 0.0
                }

                
            }else if(place3 == 2){
                if (threetext.text == "a"){
                    classthereeg = 4.0
                } else if (threetext.text == "b"){
                    classthereeg = 3.0
                } else if (threetext.text == "c"){
                    classthereeg = 2.0
                } else if (threetext.text == "d"){
                    classthereeg = 1.0
                }else if (threetext.text == "f"){
                    classthereeg = 0.0
                }

                
            }
            if (place4 == 0 ){
                if (fourtext.text == "a"){
                    classfourg = 5.0
                } else if (fourtext.text == "b"){
                    classfourg = 4.0
                } else if (fourtext.text == "c"){
                    classfourg = 3.0
                } else if (fourtext.text == "d"){
                    classfourg = 1.0
                }else if (fourtext.text == "f"){
                    classfourg = 0.0
                }

            }else if (place4 == 1){
                  if (fourtext.text == "a"){
                classfourg = 4.5
            } else if (fourtext.text == "b"){
                classfourg = 3.5
            } else if (fourtext.text == "c"){
                classfourg = 2.5
            } else if (fourtext.text == "d"){
                classfourg = 1.0
            }else if (fourtext.text == "f"){
                classfourg = 0.0
        }

            } else if (place4 == 2){
    if (fourtext.text == "a"){
    classfourg = 4.0
    } else if (fourtext.text == "b"){
    classfourg = 3.0
    } else if (fourtext.text == "c"){
    classfourg = 2.0
    } else if (fourtext.text == "d"){
    classfourg = 1.0
    }else if (fourtext.text == "f"){
    classfourg = 0.0
    }
 
            }
            if (place5 == 0 ){
                if (fivetext.text == "a"){
                    classfiveg = 5.0
                } else if (fivetext.text == "b"){
                    classfiveg = 4.0
                } else if (fivetext.text == "c"){
                    classfiveg = 3.0
                } else if (fivetext.text == "d"){
                    classfiveg = 1.0
                }else if (fivetext.text == "f"){
                    classfiveg = 0.0
                }

            }else if (place5 == 1){
                if (fivetext.text == "a"){
                    classfiveg = 4.5
                } else if (fivetext.text == "b"){
                    classfiveg = 3.5
                } else if (fivetext.text == "c"){
                    classfiveg = 2.5
                } else if (fivetext.text == "d"){
                    classfiveg = 1.0
                }else if (fivetext.text == "f"){
                    classfiveg = 0.0
                }

            }else if(place5 == 2){
                if (fivetext.text == "a"){
                    classfiveg = 4.0
                } else if (fivetext.text == "b"){
                    classfiveg = 3.0
                } else if (fivetext.text == "c"){
                    classfiveg = 2.0
                } else if (fivetext.text == "d"){
                    classfiveg = 1.0
                }else if (fivetext.text == "f"){
                    classfiveg = 0.0
                }

            }
            if (place6 == 0 ){
                if (sixtext.text == "a"){
                    classsixg = 5.0
                } else if (sixtext.text == "b"){
                    classsixg = 4.0
                } else if (sixtext.text == "c"){
                    classsixg = 3.0
                } else if (sixtext.text == "d"){
                    classsixg = 1.0
                }else if (sixtext.text == "f"){
                    classsixg = 0.0
                }

            }else if (place6 == 1){
                if (sixtext.text == "a"){
                    classsixg = 4.5
                } else if (sixtext.text == "b"){
                    classsixg = 3.5
                } else if (sixtext.text == "c"){
                    classsixg = 2.5
                } else if (sixtext.text == "d"){
                    classsixg = 1.0
                }else if (sixtext.text == "f"){
                    classsixg = 0.0
                }

            }else if(place6 == 2){
                if (sixtext.text == "a"){
                    classsixg = 4.0
                } else if (sixtext.text == "b"){
                    classsixg = 3.0
                } else if (sixtext.text == "c"){
                    classsixg = 2.0
                } else if (sixtext.text == "d"){
                    classsixg = 1.0
                }else if (sixtext.text == "f"){
                    classsixg = 0.0
                }
 
            }
            if (place7 == 0 ){
                if (seventext.text == "a"){
                    classseveng = 5.0
                } else if (seventext.text == "b"){
                    classseveng = 4.0
                } else if (seventext.text == "c"){
                    classseveng = 3.0
                } else if (seventext.text == "d"){
                    classseveng = 1.0
                }else if (seventext.text == "f"){
                    classseveng = 0.0
                }

            }else if (place7 == 1){
                if (seventext.text == "a"){
                    classseveng = 4.5
                } else if (seventext.text == "b"){
                    classseveng = 3.5
                } else if (seventext.text == "c"){
                    classseveng = 2.5
                } else if (seventext.text == "d"){
                    classseveng = 1.0
                }else if (seventext.text == "f"){
                    classseveng = 0.0
                }

            }else if(place7 == 2){
                if (seventext.text == "a"){
                    classseveng = 4.0
                } else if (seventext.text == "b"){
                    classseveng = 3.0
                } else if (seventext.text == "c"){
                    classseveng = 2.0
                } else if (seventext.text == "d"){
                    classseveng = 1.0
                }else if (seventext.text == "f"){
                    classseveng = 0.0
                }

            }
            if (place8 == 0 ){
                if (eighttext.text == "a"){
                    classeight = 5.0
                } else if (eighttext.text == "b"){
                    classeight = 4.0
                } else if (eighttext.text == "c"){
                    classeight = 3.0
                } else if (eighttext.text == "d"){
                    classeight = 1.0
                }else if (eighttext.text == "f"){
                    classeight = 0.0
                }

            }else if (place8 == 1){
                if (eighttext.text == "a"){
                    classeight = 4.5
                } else if (eighttext.text == "b"){
                    classeight = 3.5
                } else if (eighttext.text == "c"){
                    classeight = 2.5
                } else if (eighttext.text == "d"){
                    classeight = 1.0
                }else if (eighttext.text == "f"){
                    classeight = 0.0
                    
                }
            }else if(place8 == 2){
                
                if (eighttext.text == "a"){
                    classeight = 4.0
                } else if (eighttext.text == "b"){
                    classeight = 3.0
                } else if (eighttext.text == "c"){
                    classeight = 2.0
                } else if (eighttext.text == "d"){
                    classeight = 1.0
                }else if (eighttext.text == "f"){
                    classeight = 0.0            }
                
        }
        gpadd = classoneg + classtwog + classthereeg + classfourg + classfiveg + classsixg + classseveng + classeight
        gpa = gpadd/8
        let finalgpa = String(gpa)
    
        label.text = finalgpa
        

            }
          

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == picker1{
            place1 = row
        }
        if pickerView == picker2{
            place2 = row
        }
        if pickerView == picker3{
            place3 = row
        }
        if pickerView == picker4{
            place4 = row
        }
        if pickerView == picker5{
            place5 = row
        }
        if pickerView == picker6{
            place6 = row
        }
        if pickerView == picker7{
            place7 = row
        }
        if pickerView == picker8{
            place8 = row
        }

    }

       //place = row
    }
    

