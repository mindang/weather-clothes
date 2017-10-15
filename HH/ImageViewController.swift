//
//  ImageViewController.swift
//  HH
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageLabel: UILabel!
    
    var selectedindex: Int?
    
    let imageZero = UIImage(named: "1.png")
    let imageOne = UIImage(named: "2.png")
    let imageTwo = UIImage(named: "3.png")
    let imageThree = UIImage(named: "4.png")
    let imageFour = UIImage(named: "5.png")
    let imageFive = UIImage(named: "6.png")
    let imageSix = UIImage(named: "7.jpg")
    let imageSeven = UIImage(named: "8.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pickerindex = selectedindex {
            
            if pickerindex == 0 {
                imageView.image = imageZero
                imageLabel.text = "한 여름 날씨입니다! 폭염이 될 가능성이 높으니 소매 없는 옷 등을 준비하세요. 추천하는 옷의 종류는 나시티, 반바지, 민소매 원피스입니다."
            }
            if pickerindex == 1 {
                imageView.image = imageOne
                imageLabel.text = "본격적인 여름 날씨입니다! 폭염이 될 가능성이 높으니 소매 없는 옷 등을 준비하세요. 추천하는 옷의 종류는 반팔, 얇은 셔츠, 반바지입니다."
            }
            if pickerindex == 2 {
                imageView.image = imageTwo
                imageLabel.text = "여름 전후의 날씨입니다! 추천하는 옷의 종류는 스키니, 면바지, 슬랙스입니다."
            }
            if pickerindex == 3 {
                imageView.image = imageThree
                imageLabel.text = "가을 날씨입니다! 얇은 긴 소매 가디건을 입는 것으로 충분하지만, 만약 추위에 약하신 분은 두터운 겉옷을 준비하세요. 추천하는 옷의 종류는 가디건, 후드티, 슬랙스입니다."
            }
            if pickerindex == 4 {
                imageView.image = imageFour
                imageLabel.text = "봄 날씨입니다! 추위에 약한 사람은 자켓을 걸쳐 입는 편이 좋습니다. 추천하는 옷의 종류는 스웨터, 셔츠, 살색 스타킹, 간절기 야상입니다."
            }
            if pickerindex == 5 {
                imageView.image = imageFive
                imageLabel.text = "꽃샘 추위가 기승인 날씨입니다! 긴 소매 스웨터를 착용하거나 옷을 여러겹 껴입는 것이 좋습니다. 추천하는 옷의 종류는 트렌치 코트, 간절기 야상입니다."
            }
            if pickerindex == 6 {
                imageView.image = imageSix
                imageLabel.text = "본격적인 겨울 날씨입니다! 추천하는 옷의 종류는 코트, 가죽자켓입니다."
            }
            if pickerindex == 7 {
                imageView.image = imageSeven
                imageLabel.text = "한겨울 날씨입니다! 추천하는 옷의 종류는 야상, 패딩, 목도리와 장갑입니다."
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
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
