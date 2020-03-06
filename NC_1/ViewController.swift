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
    @IBOutlet weak var labelName1: UILabel!
    @IBOutlet weak var labelName2: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var smallerPicture1: UIButton!
    @IBOutlet weak var smallerPicture2: UIButton!
    @IBOutlet weak var labelSP1: UILabel!
    @IBOutlet weak var labelSP2: UILabel!
    
//    var searchValue = ""
//    var data = [label1, label2, labelSP1, labelSP2] // my data here.
//    var filteredData: ["String"]!
//
    override func viewDidLoad() {
         super.viewDidLoad()
        culinarySetup()
        recreationSetup()
        museumSetup()
        cultureSetup()
         // function masing-masing segmen
//        filteredData = data
        searchInput.returnKeyType = .search //untuk button return key
        searchInput.delegate = self
        
        
//        let text = "hello doni"
//        let search = "hello Doni"
//
//        if (search == text) {
//
//        }else{hasilnya masuk ke else, krn dicek per string, text dan search beda karena huruf D pada search merupakan kapital
//
//        }
        
    }
    
    
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)  {
//        searchBar.resignFirstResponder()
//        searchValue = searchBar.text ?? "" //pemberian default value utk optional
//        print(searchValue) // untuk mendapatkan keyword
//        //input filternya berdasarkan searchValue
//    }
//
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        searchValue = ""
//    }
    
    
    @IBAction func segmentedView(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            print("Culinary")
            culinarySetup()
        }
        if sender.selectedSegmentIndex == 1 {
            print("Recreation")
            recreationSetup()
        }
        if sender.selectedSegmentIndex == 2 {
            print("Museum")
            museumSetup()
        }
        if sender.selectedSegmentIndex == 3 {
            print("Culture")
            cultureSetup()
        }
        
    }
   
    
    
    func culinarySetup() {
        label1.text = "Try Our Local Food!"
        label2.text = "Looking for Our Signature?"
        picture1.setImage(UIImage(named: "Batagor"), for: UIControl.State.normal)
        picture2.setImage(UIImage(named: "Rujak"), for: UIControl.State.normal)
        smallerPicture1.setImage(UIImage(named: "Surabi asin"), for: UIControl.State.normal)
        smallerPicture2.setImage(UIImage(named: "Surabi manis"), for: UIControl.State.normal)
    }
    func recreationSetup() {
        label1.text = "Welcome to Bandung City!"
        label2.text = "Ready to Blend with Nature?"
        picture1.setImage(UIImage(named: "mie yamin"), for: UIControl.State.normal)
        picture2.setImage(UIImage(named: "nasi timbel"), for: UIControl.State.normal)
    }
    func museumSetup() {
        label1.text = "Deep Dive to Bandung!"
        label2.text = "Looking for Collaboration Space?"
        picture1.setImage(UIImage(named: "Batagor"), for: UIControl.State.normal)
        picture2.setImage(UIImage(named: "Rujak"), for: UIControl.State.normal)
    }
    func cultureSetup() {
        label1.text = "How's Bandung People?"
        label2.text = "Don't Miss It!"
        picture1.setImage(UIImage(named: "Batagor"), for: UIControl.State.normal)
        picture2.setImage(UIImage(named: "Rujak"), for: UIControl.State.normal)
    }
    @IBAction func emergencyGuide(_ sender: UIButton) {
        let alert = UIAlertController(title: "Emergency Contact", message:
            "Immigration (+6222) 7272081; Fire Brigade 113 - (+6222) 7207113; Red Cross +6222 4207051 or 4204052; Electrical interference +6222 5222043; Police 112 - (+6222) 4203500 or 4244444; Husein Sastranegara Airport (+6222) 6041221 or 6033889", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}

