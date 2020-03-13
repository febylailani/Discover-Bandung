//
//  ViewController.swift
//  NC_1
//
//  Created by Feby Lailani on 05/03/20.
//  Copyright © 2020 Feby Lailani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    @IBOutlet weak var searchInput: UISearchBar!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var picture1: UIButton!
    @IBOutlet weak var picture2: UIButton!
    @IBOutlet weak var picture3: UIButton!
    @IBOutlet weak var picture4: UIButton!
    @IBOutlet weak var labelName1: UILabel!
    @IBOutlet weak var labelName2: UILabel!
    @IBOutlet weak var labelName3: UILabel!
    @IBOutlet weak var labelName4: UILabel!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var backgroundColor: UIView!
     
    override func viewDidLoad() {
         super.viewDidLoad()
        
        culinarySetup()
        cornerView()
    }
    
    @IBAction func segmentedView(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            
            culinarySetup()
//            mainView.layer.backgroundColor = UIColor(red:122/255, green: 255/255, blue: 200/255, alpha: 1.0).cgColor
        }
        if sender.selectedSegmentIndex == 1 {
            
            recreationSetup()
//            mainView.layer.backgroundColor = UIColor(red:95/255, green: 245/255, blue: 228/255, alpha: 0.96).cgColor
//
        }
        if sender.selectedSegmentIndex == 2 {
        
            museumSetup()
            
//            mainView.layer.backgroundColor = UIColor(red:115/255, green: 232/255, blue: 255/255, alpha: 1.0).cgColor
        }
        if sender.selectedSegmentIndex == 3 {
       
            cultureSetup()
            cornerView()
//            mainView.layer.backgroundColor = UIColor(red:158/255, green: 190/255, blue: 255/255, alpha: 1.0).cgColor
        }
        
    }
   
    func cornerView() {
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.5
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
    }
    
    func culinarySetup() {
        label1.text = "Try Our Local Food!"
        labelName1.text = "Batagor"
        labelName2.text = "Rujak"
        labelName3.text = "Surabi asin"
        labelName4.text = "Surabi manis"
        
        picture1.setImage(UIImage(named: "Batagor"), for: UIControl.State.normal)
        picture2.setImage(UIImage(named: "Rujak"), for: UIControl.State.normal)
        picture3.setImage(UIImage(named: "Surabi asin"), for: UIControl.State.normal)
        picture4.setImage(UIImage(named: "Surabi manis"), for: UIControl.State.normal)
    }
    
    func recreationSetup() {
        label1.text = "Let's Get Ready to Explore!"
        labelName1.text = "Bugbrug Waterfall"
        labelName2.text = "Sukawana Tea Plantation"
        labelName3.text = "Aseupan Waterfall"
        labelName4.text = "Cihideung Valley"
        
        picture1.setImage(UIImage(named: "Bugbrug"), for: UIControl.State.normal)
        picture2.setImage(UIImage(named: "Sukawana"), for: UIControl.State.normal)
        picture3.setImage(UIImage(named: "Aseupan"), for: UIControl.State.normal)
        picture4.setImage(UIImage(named: "Cihideung valley"), for: UIControl.State.normal)
    }
    
    func museumSetup() {
        label1.text = "Deep Dive to Bandung!"
        labelName1.text = "Museum Pos"
        labelName2.text = "Museum Geologi"
        labelName3.text = "Bandung Planning Gallery"
        labelName4.text = "Museum KAA"
        
        picture1.setImage(UIImage(named: "pos"), for: UIControl.State.normal)
        picture2.setImage(UIImage(named: "geologi"), for: UIControl.State.normal)
        picture3.setImage(UIImage(named: "bandung planning gallery"), for: UIControl.State.normal)
        picture4.setImage(UIImage(named: "KAA"), for: UIControl.State.normal)
    }
    
    func cultureSetup() {
        label1.text = "How's Bandung People?"
        labelName1.text = "Hong Community"
        labelName2.text = "Bandung China Town"
        labelName3.text = "Saung Udjo"
        labelName4.text = "Traditional Puppet"
        
        picture1.setImage(UIImage(named: "hong"), for: UIControl.State.normal)
        picture2.setImage(UIImage(named: "china town"), for: UIControl.State.normal)
        picture3.setImage(UIImage(named: "udjo"), for: UIControl.State.normal)
        picture4.setImage(UIImage(named: "puppet"), for: UIControl.State.normal)
    }
    
    @IBAction func pictureContent(_ sender: UIButton) {
        print("pictureoneloaded")
        self.performSegue(withIdentifier: "secondScreen", sender: self)
    }
    
    
    @IBAction func emergencyGuide(_ sender: UIButton) {
        let alert = UIAlertController(title: "Emergency Contact", message:
            "Immigration (+6222) 7272081;\nFire Brigade 113 - (+6222) 7207113;\nRed Cross +6222 4207051 or 4204052;\n Electrical interference +6222 5222043;\n Police 112 - (+6222) 4203500 or 4244444;\n Husein Sastranegara Airport (+6222) 6041221 or 6033889", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}

