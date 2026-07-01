//
//  EmployerInformationVC.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 13/05/24.
//

import UIKit

class EmployeeInformationVC: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate, UITextViewDelegate {
    
    // MARK: -> @IBOutlet
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var positionTextView: UITextView!
    @IBOutlet weak var birthdateTextView: UITextView!
    @IBOutlet weak var hireDateTextView: UITextView!
    @IBOutlet weak var cellPhoneTextView: UITextView!
    @IBOutlet weak var emailTextView: UITextView!
    @IBOutlet weak var mailingAddressTextField: UITextView!
    
    var socialSecurityCardImage: UIImage? = nil
    @IBOutlet weak var socialSecurityCardButton: UIButton!
    @IBOutlet weak var socialSecurityCardImageView: UIImageView!
    
    var driversLicenseOrPassportImage: UIImage? = nil
    @IBOutlet weak var driversLicenseOrPassportButton: UIButton!
    @IBOutlet weak var driversLicenseOrPassportImageView: UIImageView!
    
    
    // I-9 FORM
    @IBOutlet weak var l9FormcompletedButton: UIButton!
    @IBOutlet weak var l9FormcompletedImageView: UIImageView!
    
    // W-4 COMPLETED
    @IBOutlet weak var w4CompletedButton: UIButton!
    @IBOutlet weak var w4CompletedImageView: UIImageView!
    
    // PAY RATE
    @IBOutlet weak var payRateButton1: UIButton!
    @IBOutlet weak var payRateButton2: UIButton!
    @IBOutlet weak var payRateButton3: UIButton!
    
    @IBOutlet weak var payRateImageView1: UIImageView!
    @IBOutlet weak var payRateImageView2: UIImageView!
    @IBOutlet weak var payRateImageView3: UIImageView!
    
    // PAY SCHEDULE
    @IBOutlet weak var payScheduleButton1: UIButton!
    @IBOutlet weak var payScheduleButton2: UIButton!
    
    @IBOutlet weak var payScheduleImageView1: UIImageView!
    @IBOutlet weak var payScheduleImageView2: UIImageView!
    
    // PER DAY
    @IBOutlet weak var payDayButton1: UIButton!
    @IBOutlet weak var payDayButton2: UIButton!
    @IBOutlet weak var payDayButton3: UIButton!
    @IBOutlet weak var payDayButton4: UIButton!
    @IBOutlet weak var payDayButton5: UIButton!
    
    @IBOutlet weak var payDayImageView1: UIImageView!
    @IBOutlet weak var payDayImageView2: UIImageView!
    @IBOutlet weak var payDayImageView3: UIImageView!
    @IBOutlet weak var payDayImageView4: UIImageView!
    @IBOutlet weak var payDayImageView5: UIImageView!
    
    // SICK LEAVE POLICY
    @IBOutlet weak var sickLeavePolicyButton1: UIButton!
    @IBOutlet weak var sickLeavePolicyButton2: UIButton!
    
    @IBOutlet weak var sickLeavePolicyImageView1: UIImageView!
    @IBOutlet weak var sickLeavePolicyImageView2: UIImageView!
    
    // PAY DIEM
    @IBOutlet weak var perDiemButton1: UIButton!
    @IBOutlet weak var perDiemButton2: UIButton!
    
    @IBOutlet weak var perDiemImageView1: UIImageView!
    @IBOutlet weak var perDiemImageView2: UIImageView!
    
    // MILEAGE
    @IBOutlet weak var mileageButton1: UIButton!
    @IBOutlet weak var mileageButton2: UIButton!
    
    @IBOutlet weak var mileageImageView1: UIImageView!
    @IBOutlet weak var mileageImageView2: UIImageView!
    
    // PERSONAL FAMILY LEAVE POLICY
    @IBOutlet weak var personalFamilyLeavePolicyTextView: UITextView!
    
    // OTHER INFORMATION
    @IBOutlet weak var otherInformationTextView: UITextView!
    
    @IBOutlet weak var companyNameTextView: UITextView!
    @IBOutlet weak var supervisorNameAndContactInformationTextView: UITextView!
    
    @IBOutlet weak var employeeSignatureButton: UIButton!
    @IBOutlet weak var supervisorSignatureButton: UIButton!
    
    
    @IBOutlet weak var employerNameLabel: UILabel!
    
    @IBOutlet weak var firstNameTextView: UITextView!
    @IBOutlet weak var lastNameTextView: UITextView!
    
    
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var countN: Int = 0
    
    var isFromOSHA = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationController?.isNavigationBarHidden = true
        
//        if let savedText1a = UserDefaults.standard.string(forKey: "savedText1a") {
//            employeeFullNameTextView.text = savedText1a
//        }
        if let savedText2a = UserDefaults.standard.string(forKey: "savedText2a") {
            positionTextView.text = savedText2a
        }
        if let savedText3a = UserDefaults.standard.string(forKey: "savedText3a") {
            birthdateTextView.text = savedText3a
        }
        if let savedText4a = UserDefaults.standard.string(forKey: "savedText4a") {
            hireDateTextView.text = savedText4a
        }
        if let savedText5a = UserDefaults.standard.string(forKey: "savedText5a") {
            cellPhoneTextView.text = savedText5a
        }
        if let savedText6a = UserDefaults.standard.string(forKey: "savedText6a") {
            emailTextView.text = savedText6a
        }
        if let savedText7a = UserDefaults.standard.string(forKey: "savedText7a") {
            mailingAddressTextField.text = savedText7a
        }
        if let savedText8a = UserDefaults.standard.string(forKey: "savedText8a") {
            personalFamilyLeavePolicyTextView.text = savedText8a
        }
        if let savedText9a = UserDefaults.standard.string(forKey: "savedText9a") {
            otherInformationTextView.text = savedText9a
        }
        
        firstNameTextView.text = "First Name"
        firstNameTextView.textColor = UIColor.lightGray
        firstNameTextView.font = UIFont(name: "Helvetica", size: 15.0)
        firstNameTextView.returnKeyType = .done
        firstNameTextView.delegate = self
        
        lastNameTextView.text = "Last Name"
        lastNameTextView.textColor = UIColor.lightGray
        lastNameTextView.font = UIFont(name: "Helvetica", size: 15.0)
        lastNameTextView.returnKeyType = .done
        lastNameTextView.delegate = self
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "First Name"{
            textView.text = ""
            textView.textColor = UIColor.black
            textView.font = UIFont(name: "Helvetica", size: 15.0)
        }else if textView.text == "Last Name"{
            textView.text = ""
            textView.textColor = UIColor.black
            textView.font = UIFont(name: "Helvetica", size: 15.0)
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if firstNameTextView.text == "" {
            firstNameTextView.text = "First Name"
            
            firstNameTextView.font = UIFont(name: "Helvetica", size: 15.0)
            lastNameTextView.delegate = self
        }else if lastNameTextView.text == ""{
            lastNameTextView.text = "Last Name"
            lastNameTextView.textColor = UIColor.lightGray
            lastNameTextView.font = UIFont(name: "Helvetica", size: 15.0)
            lastNameTextView.returnKeyType = .done
            lastNameTextView.delegate = self
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
        }
        return true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        appDelegate.dicFPDOHSSkillSeet.setValue(employeeSignatureButton.imageView?.image, forKey: "employeeSignature")
        appDelegate.dicFPDOHSSkillSeet.setValue(supervisorSignatureButton.imageView?.image, forKey: "supervisorSignature")
        
       // UserDefaults.standard.set(employeeFullNameTextView.text, forKey: "savedText1a")
        UserDefaults.standard.set(positionTextView.text, forKey: "savedText2a")
        UserDefaults.standard.set(birthdateTextView.text, forKey: "savedText3a")
        UserDefaults.standard.set(hireDateTextView.text, forKey: "savedText4a")
        UserDefaults.standard.set(cellPhoneTextView.text, forKey: "savedText5a")
        UserDefaults.standard.set(emailTextView.text, forKey: "savedText6a")
        UserDefaults.standard.set(mailingAddressTextField.text, forKey: "savedText7a")
        UserDefaults.standard.set(personalFamilyLeavePolicyTextView.text, forKey: "savedText8a")
        UserDefaults.standard.set(otherInformationTextView.text, forKey: "savedText9a")
        
        appDelegate.dicFPDOHSSkillSeet.setValue(socialSecurityCardImageView.image, forKey: "socialSecurityCardImageView")
        appDelegate.dicFPDOHSSkillSeet.setValue(driversLicenseOrPassportImageView.image, forKey: "driversLicenseOrPassportImageView")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        employeeSignatureButton.setImage(appDelegate.imgSignExcavation1.image, for: .normal)
        supervisorSignatureButton.setImage(appDelegate.imgSignExcavation2.image, for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
        
        setData()
        companyNameLabel.text = "\(appDelegate.employerName)"
        companyNameTextView.text = "\(appDelegate.employerName)"
        employerNameLabel.text = "I have read and agree to ablde by the " + "\(appDelegate.employerName)" + " company policy"
        supervisorNameAndContactInformationTextView.text = "\(appDelegate.ownerDirector)"
        checkSelectedImages()
    }
    
    func setData(){
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "employeeSignature") != nil {
            self.employeeSignatureButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "employeeSignature") as? UIImage, for: .normal)
        }
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "supervisorSignature") != nil {
            self.supervisorSignatureButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "supervisorSignature") as? UIImage, for: .normal)
        }
        
        
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "socialSecurityCardImageView") != nil {
            self.socialSecurityCardImageView.image = appDelegate.dicFPDOHSSkillSeet.value(forKey: "socialSecurityCardImageView") as? UIImage
        }
        
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "driversLicenseOrPassportImageView") != nil {
            self.driversLicenseOrPassportImageView.image = appDelegate.dicFPDOHSSkillSeet.value(forKey: "driversLicenseOrPassportImageView") as? UIImage
        }
    }
   
    
    @IBAction func clickOnShareButton(_ sender: UIButton) {
        
        alert()
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "Employee Information", tim: true, controller: self)
    }
    
    
    @IBAction func clickOnSaveButton(_ sender: UIButton) {
     
        alert()
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "Employee Information")
        AlertHelper.shared.alertController(title: "Human Resource Solutions", message: "This form has been save successfully", okTitle: "OK", controller: self) { _ in self.navigationController?.popViewController(animated: false) }
        
        appDelegate.employeeFirstName = firstNameTextView.text ?? ""
        appDelegate.employeeLastName = lastNameTextView.text ?? ""
        appDelegate.position = positionTextView.text ?? ""
        appDelegate.mailingAddress = mailingAddressTextField.text ?? ""
        appDelegate.birthdate = birthdateTextView.text ?? ""
        appDelegate.email = emailTextView.text ?? ""
        appDelegate.callPhone = cellPhoneTextView.text ?? ""
    }

    @IBAction func clickOnBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }

    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if countN == 1{
            let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            socialSecurityCardImageView.image = image
            
            if isFromOSHA {
                appDelegate.dicFPDOHSSkillSeet.setValue(socialSecurityCardImageView.image, forKey: "socialSecurityCardImageView")
            } else {
                appDelegate.dicFPDOHSSkillSeet.setValue(socialSecurityCardImageView.image, forKey: "socialSecurityCardImageView")
            }
            dismiss(animated: true, completion: nil)
        }
        else if countN == 2{
            let image2 = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            driversLicenseOrPassportImageView.image = image2
            
            if isFromOSHA {
                appDelegate.dicFPDOHSSkillSeet.setValue(driversLicenseOrPassportImageView.image, forKey: "driversLicenseOrPassportImageView")
            } else {
                appDelegate.dicFPDOHSSkillSeet.setValue(driversLicenseOrPassportImageView.image, forKey: "driversLicenseOrPassportImageView")
            }
            dismiss(animated: true, completion: nil)
        }

    }
   
    func alert(){
                [firstNameTextView].forEach { txn in
                    if txn.text?.isEmpty == true {
                        AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Employee Full Name.", okTitle: "Ok", controller: self, handler: { _ in })
                        return
                    }
                }
                [lastNameTextView].forEach { txn in
                    if txn.text?.isEmpty == true {
                        AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Employee Full Name.", okTitle: "Ok", controller: self, handler: { _ in })
                        return
                    }
                }
                [positionTextView].forEach { txn in
                    if txn.text?.isEmpty == true {
                        AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Position.", okTitle: "Ok", controller: self, handler: { _ in })
                        return
                    }
                }
                [birthdateTextView].forEach { txn in
                    if txn.text?.isEmpty == true {
                        AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Birthdate.", okTitle: "Ok", controller: self, handler: { _ in })
                        return
                    }
                }
                [hireDateTextView].forEach { txn in
                    if txn.text?.isEmpty == true {
                        AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Hire Date.", okTitle: "Ok", controller: self, handler: { _ in })
                        return
                    }
                }
                [cellPhoneTextView].forEach { txn in
                    if txn.text?.isEmpty == true {
                        AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Cell Phone.", okTitle: "Ok", controller: self, handler: { _ in })
                        return
                    }
                }
                [emailTextView].forEach { txn in
                    if txn.text?.isEmpty == true {
                        AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Email.", okTitle: "Ok", controller: self, handler: { _ in })
                        return
                    }
                }
                [mailingAddressTextField].forEach { txn in
                    if txn.text?.isEmpty == true {
                        AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Mailing Address.", okTitle: "Ok", controller: self, handler: { _ in })
                        return
                    }
                }
            
            [l9FormcompletedButton].forEach { button in
                if button?.isSelected == false {
                    AlertHelper.shared.alertController(title: "Alert", message: "Please Select I-9 Form.", okTitle: "Ok", controller: self, handler: { _ in })
                    return
                }
            }

            [w4CompletedButton].forEach { button in
                if button?.isSelected == false {
                    AlertHelper.shared.alertController(title: "Alert", message: "Please Select W-4 Completed.", okTitle: "Ok", controller: self, handler: { _ in })
                    return
                }
            }
            [payRateButton1,
             payRateButton2,].forEach { button in
                if button?.isSelected == false {
                    AlertHelper.shared.alertController(title: "Alert", message: "Please Select Regular Pay And Overtime Pay.", okTitle: "Ok", controller: self, handler: { _ in })
                    return
                }
            }
        
        if employeeSignatureButton.imageView?.image == nil {
            AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Employee Signature.", okTitle: "Ok", controller: self, handler: { _ in })
            return
        }
        if supervisorSignatureButton.imageView?.image == nil {
            AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Supervisor Signature.", okTitle: "Ok", controller: self, handler: { _ in })
            return
        }
        var checkbox = false
        
        [payScheduleButton1,
         payScheduleButton2,].forEach { button in
            if button?.isSelected == true {
                
                checkbox = true
            }
        }
            if checkbox == true{
                
            }
            else {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Pay Schedule.", okTitle: "Ok", controller: self, handler: { _ in })
            }
        
        var checkbox2 = false
       
        [payDayButton1,
         payDayButton2,
         payDayButton3,
         payDayButton4,
         payDayButton5].forEach { button in
            if button?.isSelected == true {
                checkbox2 = true
            }
        }
            if checkbox2 == true{
              
            }
            else {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Pay Day.", okTitle: "Ok", controller: self, handler: { _ in })
            }
    
        var checkbox3 = false
        
        [perDiemButton1,
         perDiemButton2].forEach { button in
            if button?.isSelected == true {
                checkbox3 = true
            }
        }
            if checkbox3 == true{
              
            }
            else {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Pay Diem.", okTitle: "Ok", controller: self, handler: { _ in })
            }
  
        var checkbox4 = false
        
        [mileageButton1,
         mileageButton2].forEach { button in
            if button?.isSelected == true {
                checkbox4 = true
            }
        }
            if checkbox4 == true{
              
            }
        else {
            AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Mileage.", okTitle: "Ok", controller: self, handler: { _ in })
            
        }
        
               
    }
    
    // MARK: -> IBAction
    
    // I-9 FORM
    @IBAction func l9FormcompletedTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: l9FormcompletedImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img1)
    }
    
    // W-4 COMPLETED
    @IBAction func w4CompletedTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: w4CompletedImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img2)
    }
    
    // PAY RATE
    @IBAction func payRateTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payRateImageView1, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img3)
    }
    @IBAction func payRateTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payRateImageView2, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img4)
    }
    @IBAction func payRateTapButton3(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payRateImageView3, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img5)
    }
    
    // PAY SCHEDULE
    @IBAction func payScheduleTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payScheduleImageView1, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img6)
    }
    @IBAction func payScheduleTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payScheduleImageView2, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img7)
    }
    
    // PER DIEM
    @IBAction func payDayTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payDayImageView1, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img8)
    }
    @IBAction func payDayTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payDayImageView2, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img9)
    }
    @IBAction func payDayTapButton3(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payDayImageView3, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img10)
    }
    @IBAction func payDayTapButton4(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payDayImageView4, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img11)
    }
    @IBAction func payDayTapButton5(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: payDayImageView5, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img12)
    }
    
    // SICK LEAVE POLICY
    @IBAction func sickLeavePolicyTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: sickLeavePolicyImageView1, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img13)
    }
    @IBAction func sickLeavePolicyTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: sickLeavePolicyImageView2, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img14)
    }
    
    // PAY DAY
    @IBAction func perDiemTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: perDiemImageView1, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img15)
    }
    @IBAction func perDiemTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: perDiemImageView2, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img16)
    }
    
    // MILEAGE
    @IBAction func mileageTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: mileageImageView1, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img17)
    }
    @IBAction func mileageTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: mileageImageView2, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img18)
    }
    
    
    @IBAction func employeeSignatureTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 1
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func supervisorSignatureTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 2
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func socialSecurityCardTapButton(_ sender: UIButton) {
        countN = 1
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
    
    @IBAction func driversLicenseOrPassportTapButton(_ sender: UIButton) {
        countN = 2
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
        
        let nR = [l9FormcompletedImageView,
                  w4CompletedImageView,
                  payRateImageView1,
                  payRateImageView2,
                  payRateImageView3,
                  payScheduleImageView1,
                  payScheduleImageView2,
                  payDayImageView1,
                  payDayImageView2,
                  payDayImageView3,
                  payDayImageView4,
                  payDayImageView5,
                  sickLeavePolicyImageView1,
                  sickLeavePolicyImageView2,
                  perDiemImageView1,
                  perDiemImageView2,
                  mileageImageView1,
                  mileageImageView2,
                  ]
        
        for key in 0..<KeysPermitVC.selectUnselectAllKeys1.count {
            switch appDelegate.dicWorkVC.value(forKey: KeysPermitVC.selectUnselectAllKeys1[key]) as? Int ?? -1 {
            case 0:
                switch key {
                case 0:
                    l9FormcompletedButton.isSelected = false
                case 1:
                    w4CompletedButton.isSelected = false
                case 2:
                    payRateButton1.isSelected = false
                case 3:
                    payRateButton2.isSelected = false
                case 4:
                    payRateButton3.isSelected = false
                case 5:
                    payScheduleButton1.isSelected = false
                case 6:
                    payScheduleButton2.isSelected = false
                case 7:
                    payDayButton1.isSelected = false
                case 8:
                    payDayButton2.isSelected = false
                case 9:
                    payDayButton3.isSelected = false
                case 10:
                    payDayButton4.isSelected = false
                case 11:
                    payDayButton5.isSelected = false
                case 12:
                    sickLeavePolicyButton1.isSelected = false
                case 13:
                    sickLeavePolicyButton2.isSelected = false
                case 14:
                    perDiemButton1.isSelected = false
                case 15:
                    perDiemButton2.isSelected = false
                case 16:
                    mileageButton1.isSelected = false
                case 17:
                    mileageButton2.isSelected = false
                default:
                    break
                }
                nR[key]?.image = UIImage(named: "ic_uncheck")
            case 1:
                switch key {
                case 0:
                    l9FormcompletedButton.isSelected = true
                case 1:
                    w4CompletedButton.isSelected = true
                case 2:
                    payRateButton1.isSelected = true
                case 3:
                    payRateButton2.isSelected = true
                case 4:
                    payRateButton3.isSelected = true
                case 5:
                    payScheduleButton1.isSelected = true
                case 6:
                    payScheduleButton2.isSelected = true
                case 7:
                    payDayButton1.isSelected = true
                case 8:
                    payDayButton2.isSelected = true
                case 9:
                    payDayButton3.isSelected = true
                case 10:
                    payDayButton4.isSelected = true
                case 11:
                    payDayButton5.isSelected = true
                case 12:
                    sickLeavePolicyButton1.isSelected = true
                case 13:
                    sickLeavePolicyButton2.isSelected = true
                case 14:
                    perDiemButton1.isSelected = true
                case 15:
                    perDiemButton2.isSelected = true
                case 16:
                    mileageButton1.isSelected = true
                case 17:
                    mileageButton2.isSelected = true
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
