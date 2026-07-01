//
//  Helper.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 16/05/24.
//

import Foundation
import UIKit

final class MyHelper {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let shared = MyHelper()
    
    ///Description: This function is select and unselect the checkmarks at the place.
    func selectedUnseleted(img: UIImageView, sender: UIButton, vc: String? = "", key: String? = nil) {
        switch sender.tag {
        case 0:
            sender.isSelected = !sender.isSelected
            if sender.isSelected {
                appDelegate.dicWorkVC.setValue(1, forKey: key ?? "")
                img.image = UIImage(named: "ic_check")
            }else {
                appDelegate.dicWorkVC.setValue(0, forKey: key ?? "")
                img.image = UIImage(named: "ic_uncheck")
            }
        case 1:
            sender.isSelected = !sender.isSelected
            if sender.isSelected {
                appDelegate.dicWorkVC.setValue(1, forKey: key ?? "")
                img.image = UIImage(named: "ic_check")
            }else {
                appDelegate.dicWorkVC.setValue(0, forKey: key ?? "")
                img.image = UIImage(named: "ic_uncheck")
            }
        case 2:
            sender.isSelected = !sender.isSelected
            if sender.isSelected {
                appDelegate.dicWorkVC.setValue(1, forKey: key ?? "")
                img.image = UIImage(named: "ic_check")
            }else {
                appDelegate.dicWorkVC.setValue(0, forKey: key ?? "")
                img.image = UIImage(named: "ic_uncheck")
            }
        case 3:
            sender.isSelected = !sender.isSelected
            if sender.isSelected {
                appDelegate.dicWorkVC.setValue(1, forKey: key ?? "")
                img.image = UIImage(named: "ic_check")
            }else {
                appDelegate.dicWorkVC.setValue(0, forKey: key ?? "")
                img.image = UIImage(named: "ic_uncheck")
            }
        case 4:
            sender.isSelected = !sender.isSelected
            if sender.isSelected {
                appDelegate.dicWorkVC.setValue(1, forKey: key ?? "")
                img.image = UIImage(named: "ic_check")
            }else {
                appDelegate.dicWorkVC.setValue(0, forKey: key ?? "")
                img.image = UIImage(named: "ic_uncheck")
            }
        case 5:
            sender.isSelected = !sender.isSelected
            if sender.isSelected {
                appDelegate.dicWorkVC.setValue(1, forKey: key ?? "")
                img.image = UIImage(named: "ic_check")
            }else {
                appDelegate.dicWorkVC.setValue(0, forKey: key ?? "")
                img.image = UIImage(named: "ic_uncheck")
            }
//        case 99:
//            sender.isSelected = !sender.isSelected
//            if sender.isSelected {
//                appDelegate.dicWorkVC.setValue(1, forKey: key ?? "")
//                img.image = UIImage(named: "black-circle")
//            }else {
//                appDelegate.dicWorkVC.setValue(0, forKey: key ?? "")
//                img.image = UIImage(named: "white circle")
//            }
        default:
            print("Error while selecting, Something Went Wrong")
        }
    }
    
    
}




