//
//  PickerViewController.swift
//  HH
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var imageViewButton: UIButton!
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var weatherImage: UIImageView!
    
    var tempArray: Array<String> = []
    
    let imageOne = UIImage(named: "11.png")
    let imageTwo = UIImage(named: "22.png")
    let imageThree = UIImage(named: "33.png")
    let imageFour = UIImage(named: "44.png")
    let imageFive = UIImage(named: "55.png")
    let imageSix = UIImage(named: "66.png")
    let imageSeven = UIImage(named: "77.png")
    let imageEight = UIImage(named: "88.png")
    
    //var selectedindex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tempArray = ["27°C~", "23°C ~ 26°C", "20°C ~ 22°C", "17°C ~ 19°C", "12°C ~ 16°C", "10°C ~ 11°C", "6°C ~ 9°C", "~ 5°C"]
        weatherImage.image = imageOne
        }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tempArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tempArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if row == 1 {
            weatherImage.image = imageTwo
        }
        else if row == 2 {
            weatherImage.image = imageThree
        }
        else if row == 3 {
            weatherImage.image = imageFour
        }
        else if row == 4 {
            weatherImage.image = imageFive
        }
        else if row == 5 {
            weatherImage.image = imageSix
        }
        else if row == 6 {
            weatherImage.image = imageSeven
        }
        else if row == 7 {
            weatherImage.image = imageEight
        }

    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageView" {
            let destVC = segue.destination as! ImageViewController
            
            let index: Int! = pickerView.selectedRow(inComponent: 0)
            
            destVC.selectedindex = index
        }
        
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
