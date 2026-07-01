//
//  EPSignatureViewController.swift
//  Pods
//
//  Created by Prabaharan Elangovan on 13/01/16.
//
//

import UIKit

class EPSignatureViewController: UIViewController, SwiftSignatureViewDelegate {
    
    //MARK: - IBOutlets
    
    
    var isFromExcavation = false
    let appDElate = UIApplication.shared.delegate as? AppDelegate
    
    @IBOutlet var signView: SwiftSignatureView!
    
    //MARK: - View Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func swiftSignatureViewDidDrawGesture(_ view: ISignatureView, _ tap: UIGestureRecognizer) {
        print("swiftSignatureViewDidDrawGesture")
    }

    func swiftSignatureViewDidDraw(_ view: ISignatureView) {
        print("swiftSignatureViewDidDraw")
    }

    @IBAction func clickedCancel(_ sender: Any) {
        //self.navigationController?.popViewController(animated: true)
        signView.clear()
    }
    
    @IBAction func clickedDone(_ sender: Any) {
        
        if isFromExcavation == true{
            appDElate?.imgSignExcavation.image = signView.getCroppedSignature()
        }else{
            appDElate?.imgSign.image = signView.getCroppedSignature()
        }
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
