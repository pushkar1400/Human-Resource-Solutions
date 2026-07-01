//
//  EmployeesWithholdingCertificateVC.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 13/05/24.
//

import UIKit

class EmployeesWithholdingCertificateVC: UIViewController {

   //MARK: -> IBOutlet
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    // step1
    @IBOutlet weak var step1FirstNameTextView: UITextView!
    @IBOutlet weak var step1LastName: UITextView!
    @IBOutlet weak var step1AddressTextView: UITextView!
    @IBOutlet weak var step1CityOrTownTextView: UITextView!
    
    @IBOutlet weak var step1SingleButton: UIButton!
    @IBOutlet weak var step1SingleImageView: UIImageView!
    
    @IBOutlet weak var step1MarriedButton: UIButton!
    @IBOutlet weak var step1MarriedImageView: UIImageView!
    
    @IBOutlet weak var step1HeadButton: UIButton!
    @IBOutlet weak var step1HeadImageView: UIImageView!
    
   // step2
    @IBOutlet weak var step2Button: UIButton!
    @IBOutlet weak var step2ImageView: UIImageView!
    
    // step3
    @IBOutlet weak var step3TextField1: UITextField!
    @IBOutlet weak var step3TextField2: UITextField!
    
    // step5
    @IBOutlet weak var step5EmployeesSignatureButton: UIButton!
    @IBOutlet weak var step5DateTextField: UITextField!
    
    @IBOutlet weak var employersNameAndAddressTextView: UITextView!
    @IBOutlet weak var firstDateOfEmploymentTextView: UITextView!
    @IBOutlet weak var employerIdentificationTextView: UITextView!
    
    @IBOutlet weak var step2BTextField1: UITextField!
    @IBOutlet weak var step2BTextField2: UITextField!
    @IBOutlet weak var step2BTextField3: UITextField!
    @IBOutlet weak var step2BTextField4: UITextField!
    @IBOutlet weak var step2BTextField5: UITextField!
    @IBOutlet weak var step2BTextField6: UITextField!
    
    @IBOutlet weak var step4BTextField1: UITextField!
    @IBOutlet weak var step4BTextField2: UITextField!
    @IBOutlet weak var step4BTextField3: UITextField!
    @IBOutlet weak var step4BTextField4: UITextField!
    @IBOutlet weak var step4BTextField5: UITextField!
   
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        DispatchQueue.main.async { [self] in
            UserDefaults.standard.setValue(appDelegate.todayDate, forKey: "strDate")
            UserDefaults.standard.setValue(step1LastName.text, forKey: "lastName")
        }
            
        if let savedText1d = UserDefaults.standard.string(forKey: "savedText1d") {
            step1FirstNameTextView.text = savedText1d
        }
        if let savedText2d = UserDefaults.standard.string(forKey: "savedText2d") {
            step1LastName.text = savedText2d
        }
        if let savedText3d = UserDefaults.standard.string(forKey: "savedText3d") {
            step1AddressTextView.text = savedText3d
        }
        if let savedText4d = UserDefaults.standard.string(forKey: "savedText4d") {
            step1CityOrTownTextView.text = savedText4d
        }
        if let savedText5d = UserDefaults.standard.string(forKey: "savedText5d") {
            step5DateTextField.text = savedText5d
        }
        if let savedText6d = UserDefaults.standard.string(forKey: "savedText6d") {
            employersNameAndAddressTextView.text = savedText6d
        }
        if let savedText7d = UserDefaults.standard.string(forKey: "savedText7d") {
            firstDateOfEmploymentTextView.text = savedText7d
        }
        if let savedText8d = UserDefaults.standard.string(forKey: "savedText8d") {
            employerIdentificationTextView.text = savedText8d
        }
        if let savedText9d = UserDefaults.standard.string(forKey: "savedText9d") {
            step2BTextField1.text = savedText9d
        }
        if let savedText10d = UserDefaults.standard.string(forKey: "savedText10d") {
            step2BTextField2.text = savedText10d
        }
        if let savedText11d = UserDefaults.standard.string(forKey: "savedText11d") {
            step2BTextField3.text = savedText11d
        }
        if let savedText12d = UserDefaults.standard.string(forKey: "savedText12d") {
            step2BTextField4.text = savedText12d
        }
        if let savedText13d = UserDefaults.standard.string(forKey: "savedText13d") {
            step2BTextField5.text = savedText13d
        }
        if let savedText14d = UserDefaults.standard.string(forKey: "savedText14d") {
            step2BTextField6.text = savedText14d
        }
        if let savedText15d = UserDefaults.standard.string(forKey: "savedText15d") {
            step4BTextField1.text = savedText15d
        }
        if let savedText16d = UserDefaults.standard.string(forKey: "savedText16d") {
            step4BTextField2.text = savedText16d
        }
        if let savedText17d = UserDefaults.standard.string(forKey: "savedText17d") {
            step4BTextField3.text = savedText17d
        }
        if let savedText18d = UserDefaults.standard.string(forKey: "savedText18d") {
            step4BTextField4.text = savedText18d
        }
        if let savedText19d = UserDefaults.standard.string(forKey: "savedText19d") {
            step4BTextField5.text = savedText19d
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        step1FirstNameTextView.text = "\(appDelegate.employeeFirstName)"
        step1LastName.text = "\(appDelegate.employeeLastName)"
        step1AddressTextView.text = "\(appDelegate.mailingAddress)"
        employersNameAndAddressTextView.text = "\(appDelegate.employerName)"
        employerIdentificationTextView.text = "\(appDelegate.federalEINT)"
        firstDateOfEmploymentTextView.text = appDelegate.todayDate
        setData()
        checkSelectedImages()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        appDelegate.dicFPDOHSSkillSeet.setValue(step5EmployeesSignatureButton.imageView?.image, forKey: "step5EmployeesSignature")
        
        UserDefaults.standard.set(step1FirstNameTextView.text, forKey: "savedText1d")
        UserDefaults.standard.set(step1LastName.text, forKey: "savedText2d")
        UserDefaults.standard.set(step1AddressTextView.text, forKey: "savedText3d")
        UserDefaults.standard.set(step1CityOrTownTextView.text, forKey: "savedText4d")
        UserDefaults.standard.set(step5DateTextField.text, forKey: "savedText5d")
        UserDefaults.standard.set(employersNameAndAddressTextView.text, forKey: "savedText6d")
        UserDefaults.standard.set(firstDateOfEmploymentTextView.text, forKey: "savedText7d")
        UserDefaults.standard.set(employerIdentificationTextView.text, forKey: "savedText8d")
        UserDefaults.standard.set(step2BTextField1.text, forKey: "savedText9d")
        UserDefaults.standard.set(step2BTextField2.text, forKey: "savedText10d")
        UserDefaults.standard.set(step2BTextField3.text, forKey: "savedText11d")
        UserDefaults.standard.set(step2BTextField4.text, forKey: "savedText12d")
        UserDefaults.standard.set(step2BTextField5.text, forKey: "savedText13d")
        UserDefaults.standard.set(step2BTextField6.text, forKey: "savedText14d")
        UserDefaults.standard.set(step4BTextField1.text, forKey: "savedText15d")
        UserDefaults.standard.set(step4BTextField2.text, forKey: "savedText16d")
        UserDefaults.standard.set(step4BTextField3.text, forKey: "savedText17d")
        UserDefaults.standard.set(step4BTextField4.text, forKey: "savedText18d")
        UserDefaults.standard.set(step4BTextField5.text, forKey: "savedText19d")
    }
    
    func setData(){
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "step5EmployeesSignature") != nil {
            self.step5EmployeesSignatureButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "step5EmployeesSignature") as? UIImage, for: .normal)
        }
    }
    
    @IBAction func clickOnShareButton(_ sender: UIButton) {
        
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "W4", tim: true, controller: self)
    }
    
    
    @IBAction func clickOnSaveButton(_ sender: UIButton) {
        
                SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "W4")
                AlertHelper.shared.alertController(title: "Human Resource Solutions", message: "This form has been save successfully", okTitle: "OK", controller: self) { _ in self.navigationController?.popViewController(animated: false) }
    }

    @IBAction func clickOnBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    @IBAction func step1SingleTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: step1SingleImageView, sender: sender, vc: "EmployeesWithholdingCertificateVC", key: KeysPermitVC.img1e)
    }
    @IBAction func step1MarriedTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: step1MarriedImageView, sender: sender, vc: "EmployeesWithholdingCertificateVC", key: KeysPermitVC.img2e)
        
    }
    @IBAction func step1HeadTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: step1HeadImageView, sender: sender, vc: "EmployeesWithholdingCertificateVC", key: KeysPermitVC.img3e)
    }
    @IBAction func step2TapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: step2ImageView, sender: sender, vc: "EmployeesWithholdingCertificateVC", key: KeysPermitVC.img4e)
    }
    
    @IBAction func step5EmployeesSignatureTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 9
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func checkSelectedImages() {
        
        let nR = [step1SingleImageView,
                  step1MarriedImageView,
                  step1HeadImageView,
                  step2ImageView]
        
        for key in 0..<KeysPermitVC.selectUnselectAllKeys4.count {
            switch appDelegate.dicWorkVC.value(forKey: KeysPermitVC.selectUnselectAllKeys4[key]) as? Int ?? -1 {
            case 0:
                switch key {
                case 0:
                    step1SingleButton.isSelected = false
                case 1:
                    step1MarriedButton.isSelected = false
                case 2:
                    step1HeadButton.isSelected = false
                case 3:
                    step2Button.isSelected = false
                default:
                    break
                }
                nR[key]?.image = UIImage(named: "ic_uncheck")
            case 1:
                switch key {
                case 0:
                    step1SingleButton.isSelected = true
                case 1:
                    step1MarriedButton.isSelected = true
                case 2:
                    step1HeadButton.isSelected = true
                case 3:
                    step2Button.isSelected = true
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
