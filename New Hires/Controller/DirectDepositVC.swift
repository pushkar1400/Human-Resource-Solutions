//
//  DirectDepositVC.swift
//  Human Resource Solutions
//
//  Created by koshal singh shekhawat on 03/06/24.
//

import UIKit

class DirectDepositVC: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var checkingImage1: UIImageView!
    @IBOutlet weak var checkingButton1: UIButton!
    @IBOutlet weak var savingsImage1: UIImageView!
    @IBOutlet weak var savingsButton1: UIButton!
    @IBOutlet weak var checkingImage2: UIImageView!
    @IBOutlet weak var checkingButton2: UIButton!
    @IBOutlet weak var savingsImage2: UIImageView!
    @IBOutlet weak var savingsButton2: UIButton!
   
    @IBOutlet weak var authorizedSignatureButton: UIButton!
    
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    @IBOutlet weak var textField9: UITextField!
    @IBOutlet weak var textField10: UITextField!
    @IBOutlet weak var textField11: UITextField!
    @IBOutlet weak var textField12: UITextField!
    @IBOutlet weak var textField13: UITextField!
    @IBOutlet weak var textField14: UITextField!
    
    var addImage: UIImage? = nil
    @IBOutlet weak var addImageView: UIImageView!
    @IBOutlet weak var addImageButton: UIButton!
    
    @IBOutlet weak var lastNameBackgroundView: UIView!
    @IBOutlet weak var lastNameTextView: UITextView!
    
    @IBOutlet weak var firstNameBackgroundView: UIView!
    @IBOutlet weak var firstNameTextView: UITextView!
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var isFromDD = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        self.navigationController?.isNavigationBarHidden = true
    
        lastNameBackgroundView.layer.borderWidth = 2.0
        lastNameBackgroundView.layer.cornerRadius = 10
        lastNameBackgroundView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        firstNameBackgroundView.layer.borderWidth = 2.0
        firstNameBackgroundView.layer.cornerRadius = 10
        firstNameBackgroundView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        if let savedText1g = UserDefaults.standard.string(forKey: "savedText1g") {
            textField1.text = savedText1g
        }
        if let savedText2g = UserDefaults.standard.string(forKey: "savedText2g") {
            textField2.text = savedText2g
        }
        if let savedText3g = UserDefaults.standard.string(forKey: "savedText3g") {
            textField3.text = savedText3g
        }
        if let savedText4g = UserDefaults.standard.string(forKey: "savedText4g") {
            textField4.text = savedText4g
        }
        if let savedText5g = UserDefaults.standard.string(forKey: "savedText5g") {
            textField5.text = savedText5g
        }
        if let savedText6g = UserDefaults.standard.string(forKey: "savedText6g") {
            textField6.text = savedText6g
        }
        if let savedText7g = UserDefaults.standard.string(forKey: "savedText7g") {
            textField7.text = savedText7g
        }
        if let savedText8g = UserDefaults.standard.string(forKey: "savedText8g") {
            textField8.text = savedText8g
        }
        if let savedText9g = UserDefaults.standard.string(forKey: "savedText9g") {
            textField9.text = savedText9g
        }
        if let savedText10g = UserDefaults.standard.string(forKey: "savedText10g") {
            textField10.text = savedText10g
        }
        if let savedText11g = UserDefaults.standard.string(forKey: "savedText11g") {
            textField11.text = savedText11g
        }
        if let savedText12g = UserDefaults.standard.string(forKey: "savedText12g") {
            textField12.text = savedText12g
        }
        if let savedText13g = UserDefaults.standard.string(forKey: "savedText13g") {
            textField13.text = savedText13g
        }
        if let savedText14g = UserDefaults.standard.string(forKey: "savedText14g") {
            textField14.text = savedText14g
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        firstNameTextView.text = "\(appDelegate.employeeFirstName)"
        lastNameTextView.text = "\(appDelegate.employeeLastName)"
        setData()
        checkSelectedImages()
    }
    override func viewWillDisappear(_ animated: Bool) {
        appDelegate.dicFPDOHSSkillSeet.setValue(authorizedSignatureButton.imageView?.image, forKey: "authorizedSignatureButton")
        
        UserDefaults.standard.set(textField1.text, forKey: "savedText1g")
        UserDefaults.standard.set(textField2.text, forKey: "savedText2g")
        UserDefaults.standard.set(textField3.text, forKey: "savedText3g")
        UserDefaults.standard.set(textField4.text, forKey: "savedText4g")
        UserDefaults.standard.set(textField5.text, forKey: "savedText5g")
        UserDefaults.standard.set(textField6.text, forKey: "savedText6g")
        UserDefaults.standard.set(textField7.text, forKey: "savedText7g")
        UserDefaults.standard.set(textField8.text, forKey: "savedText8g")
        UserDefaults.standard.set(textField9.text, forKey: "savedText9g")
        UserDefaults.standard.set(textField10.text, forKey: "savedText10g")
        UserDefaults.standard.set(textField11.text, forKey: "savedText11g")
        UserDefaults.standard.set(textField12.text, forKey: "savedText12g")
        UserDefaults.standard.set(textField13.text, forKey: "savedText13g")
        UserDefaults.standard.set(textField14.text, forKey: "savedText14g")
        
        appDelegate.dicFPDOHSSkillSeet.setValue(addImageView.image, forKey: "addImageView")
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      
        let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        addImageView.image = image
       
        if isFromDD {
            appDelegate.dicFPDOHSSkillSeet.setValue(addImageView.image, forKey: "addImageView")
        } else {
            appDelegate.dicFPDOHSSkillSeet.setValue(addImageView.image, forKey: "addImageView")
        }
        dismiss(animated: true, completion: nil)
        
    }
   
        
    override func viewDidAppear(_ animated: Bool) {
        authorizedSignatureButton.setImage(appDelegate.imgSignExcavation10.image, for: .normal)
    }
    
    func setData(){
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "authorizedSignatureButton") != nil {
            self.authorizedSignatureButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "authorizedSignatureButton") as? UIImage, for: .normal)
        }
        
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "addImageView") != nil {
            self.addImageView.image = appDelegate.dicFPDOHSSkillSeet.value(forKey: "addImageView") as? UIImage
        }
    }
   
    @IBAction func clickOnShareButton(_ sender: UIButton) {

        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "Direct Deposit", tim: true, controller: self)
    }
    
    
    @IBAction func clickOnSaveButton(_ sender: UIButton) {
        
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "Direct Deposit")
        AlertHelper.shared.alertController(title: "Human Resource Solutions", message: "This form has been save successfully", okTitle: "OK", controller: self) { _ in self.navigationController?.popViewController(animated: false) }
    }

    @IBAction func clickOnBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func checkingTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: checkingImage1, sender: sender, vc: "DirectDepositVC", key: KeysPermitVC.img1g)
    }
    
    @IBAction func savingsTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: savingsImage1, sender: sender, vc: "DirectDepositVC", key: KeysPermitVC.img2g)
    }
    
    @IBAction func checkingTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: checkingImage2, sender: sender, vc: "DirectDepositVC", key: KeysPermitVC.img3g)
    }
    
    @IBAction func savingsTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: savingsImage2, sender: sender, vc: "DirectDepositVC", key: KeysPermitVC.img4g)
    }
    
    @IBAction func authorizedSignatureTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 10
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    @IBAction func addImageTapButton(_ sender: UIButton) {
        
        let imgpicker = UIImagePickerController()
        imgpicker.delegate = self
        imgpicker.allowsEditing = true
        
        let alert = UIAlertController(title: "Select Image", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action) in
            imgpicker.sourceType = .camera
            self.present(imgpicker, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { (action) in
            imgpicker.sourceType = .photoLibrary
            self.present(imgpicker, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.popoverPresentationController?.sourceView = (sender as AnyObject).superview!
        alert.popoverPresentationController?.sourceRect = (sender as AnyObject).frame
        present(alert, animated: true, completion: nil)
    }
    
    
    func checkSelectedImages() {
        
        let nR = [checkingImage1,
                  savingsImage1,
                  checkingImage2,
                  savingsImage2,
        ]
        for key in 0..<KeysPermitVC.selectUnselectAllKeys6.count {
            switch appDelegate.dicWorkVC.value(forKey: KeysPermitVC.selectUnselectAllKeys6[key]) as? Int ?? -1 {
            case 0:
                switch key {
                case 0:
                    checkingButton1.isSelected = false
                case 1:
                    savingsButton1.isSelected = false
                case 2:
                    checkingButton2.isSelected = false
                case 3:
                    savingsButton2.isSelected = false
              
                default:
                    break
                }
                nR[key]?.image = UIImage(named: "ic_uncheck")
            case 1:
                switch key {
                case 0:
                    checkingButton1.isSelected = true
                case 1:
                    savingsButton1.isSelected = true
                case 2:
                    checkingButton2.isSelected = true
                case 3:
                    savingsButton2.isSelected = true
                    
                default:
                    break
                }
                nR[key]?.image = UIImage(named: "ic_check")
                
            default:
                break
            }
        }
        
    }
}
