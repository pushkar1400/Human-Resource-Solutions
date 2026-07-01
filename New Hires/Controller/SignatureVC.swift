//
//  SignatureVC.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 16/05/24.
//

import UIKit

class SignatureVC: UIViewController,SwiftSignatureViewDelegate {
    
    @IBOutlet weak var signView: SwiftSignatureView!
    
    var isFromExcavation = false
    var isWorkingOn = 0
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signView.delegate = self
    }
    
    func swiftSignatureViewDidDrawGesture(_ view: ISignatureView, _ tap: UIGestureRecognizer) {
        print("swiftSignatureViewDidDrawGesture")
    }
    
    func swiftSignatureViewDidDraw(_ view: ISignatureView) {
        print("swiftSignatureViewDidDraw")
    }
    
    
    @IBAction func cancelTapButton(_ sender: UIButton) {
        signView.clear()
        
    }
    
    @IBAction func doneTapButton(_ sender: UIButton) {
        if isWorkingOn == 1{
            appDelegate?.imgSignExcavation1.image = signView.getCroppedSignature()
           
        }else if isWorkingOn == 2{
            appDelegate?.imgSignExcavation2.image = signView.getCroppedSignature()
        }else if isWorkingOn == 3{
            appDelegate?.imgSignExcavation3.image = signView.getCroppedSignature()
        }else if isWorkingOn == 4{
            appDelegate?.imgSignExcavation4.image = signView.getCroppedSignature()
        }else if isWorkingOn == 5{
            appDelegate?.imgSignExcavation5.image = signView.getCroppedSignature()
        }else if isWorkingOn == 6{
            appDelegate?.imgSignExcavation6.image = signView.getCroppedSignature()
        }else if isWorkingOn == 7{
            appDelegate?.imgSignExcavation7.image = signView.getCroppedSignature()
        }else if isWorkingOn == 8{
            appDelegate?.imgSignExcavation8.image = signView.getCroppedSignature()
        }else if isWorkingOn == 9{
            appDelegate?.imgSignExcavation9.image = signView.getCroppedSignature()
        }else if isWorkingOn == 10{
            appDelegate?.imgSignExcavation10.image = signView.getCroppedSignature()
        }
        self.navigationController?.popViewController(animated: true)
    }
}
