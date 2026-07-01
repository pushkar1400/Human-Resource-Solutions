//
//  LogInVC.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 13/05/24.
//

import UIKit

class EmployerInformationVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var employerNameTextView: UITextView!
    @IBOutlet weak var ownerCEODDirectorTextView: UITextView!
    @IBOutlet weak var ownerCEODirectorPhoneTextView: UITextView!
    @IBOutlet weak var ownerCEODirectorEmailTextView: UITextView!
    @IBOutlet weak var humanResourceManagerTextView: UITextView!
    @IBOutlet weak var humanResourceManagerCellPhoneTextView: UITextView!
    @IBOutlet weak var humanResourceManagerPhoneTextView: UITextView!
    @IBOutlet weak var humanResourceManagerEmailTextView: UITextView!
    
    @IBOutlet weak var safetyManagerTextView: UITextView!
    @IBOutlet weak var safetyManagerCellPhoneTextView: UITextView!
    @IBOutlet weak var safetyManagerPhoneTextView: UITextView!
    @IBOutlet weak var safetyManagerEmailTextView: UITextView!
    @IBOutlet weak var federalEINTextView: UITextView!
    @IBOutlet weak var unifiedBusinessInformationNumberTextView: UITextView!
    @IBOutlet weak var stateBusinessLicenseNumberTextView: UITextView!
    @IBOutlet weak var iAndIAccountWorkersCompRateTextView: UITextView!
    @IBOutlet weak var employmentSecurityAccountRateTextView: UITextView!
    @IBOutlet weak var personalFamilyLeaveAccountRateTextView: UITextView!
    @IBOutlet weak var dunnsNumberTextField: UITextView!
    @IBOutlet weak var secretaryOfStateRenewalDateTextField: UITextView!
    
    @IBOutlet weak var weeklyButton: UIButton!
    @IBOutlet weak var weeklyImageView: UIImageView!
    
    @IBOutlet weak var biWeeklyButton: UIButton!
    @IBOutlet weak var biWeeklyImageView: UIImageView!
    
    @IBOutlet weak var mondayButton: UIButton!
    @IBOutlet weak var mondayImageView: UIImageView!
    
    @IBOutlet weak var tuesdayButton: UIButton!
    @IBOutlet weak var tuesdayImageView: UIImageView!
    
    @IBOutlet weak var wednesdayButton: UIButton!
    @IBOutlet weak var wednesdayImageView: UIImageView!
    
    @IBOutlet weak var thursdayButton: UIButton!
    @IBOutlet weak var thursdayImageView: UIImageView!
    
    @IBOutlet weak var fridayButton: UIButton!
    @IBOutlet weak var fridayImageView: UIImageView!
    
    @IBOutlet weak var waPersonalButton: UIButton!
    @IBOutlet weak var waPersonalImageView: UIImageView!
    
    @IBOutlet weak var otherTwoButton: UIButton!
    @IBOutlet weak var otherTwoImageView: UIImageView!
    
    
    @IBOutlet weak var hourForEvery40HourButton: UIButton!
    @IBOutlet weak var hourForEvery40HourImageView: UIImageView!
    
    @IBOutlet weak var otherButton: UIButton!
    @IBOutlet weak var otherImageView: UIImageView!
    
    @IBOutlet weak var gsaRatesButton: UIButton!
    @IBOutlet weak var gsaRatesImageView: UIImageView!
    
    @IBOutlet weak var otherPerDiemButton: UIButton!
    @IBOutlet weak var otherPerDiemBImageView: UIImageView!
    
    @IBOutlet weak var gsaRatesMileageButton: UIButton!
    @IBOutlet weak var gsaRatesMileageImageView: UIImageView!
    
    @IBOutlet weak var otherMileageButton: UIButton!
    @IBOutlet weak var otherMileageBImageView: UIImageView!
    
    @IBOutlet weak var lodgingPolicyTextView: UITextView!
    @IBOutlet weak var otherCodesTextView: UITextView!
    
    @IBOutlet weak var locationOfFirstAidTextView: UITextView!
    @IBOutlet weak var locationOfFireTextView: UITextView!
    @IBOutlet weak var locationOfSafetyTextView: UITextView!
    @IBOutlet weak var locationOfAccidentTextView: UITextView!
    @IBOutlet weak var otherTwoTextView: UITextView!
    @IBOutlet weak var otherTextView: UITextView!
    @IBOutlet weak var otherPerDiemTextView: UITextView!
    @IBOutlet weak var otherMileageTextView: UITextView!
    
    @IBOutlet weak var weeklyLabel: UILabel!
    @IBOutlet weak var biWeeklyLabel: UILabel!
    
    @IBOutlet weak var mondayLabel: UILabel!
    @IBOutlet weak var tuesdayLabel: UILabel!
    @IBOutlet weak var wednesdayLabel: UILabel!
    @IBOutlet weak var thursdayLabel: UILabel!
    @IBOutlet weak var firdayLabel: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        
        if let savedText1e = UserDefaults.standard.string(forKey: "savedText1e") {
            employerNameTextView.text = savedText1e
        }
        if let savedText2e = UserDefaults.standard.string(forKey: "savedText2e") {
            ownerCEODDirectorTextView.text = savedText2e
        }
        if let savedText3e = UserDefaults.standard.string(forKey: "savedText3e") {
            ownerCEODirectorPhoneTextView.text = savedText3e
        }
        if let savedText4e = UserDefaults.standard.string(forKey: "savedText4e") {
            ownerCEODirectorEmailTextView.text = savedText4e
        }
        if let savedText5e = UserDefaults.standard.string(forKey: "savedText5e") {
            humanResourceManagerTextView.text = savedText5e
        }
        if let savedText6e = UserDefaults.standard.string(forKey: "savedText6e") {
            humanResourceManagerCellPhoneTextView.text = savedText6e
        }
        if let savedText7e = UserDefaults.standard.string(forKey: "savedText7e") {
            humanResourceManagerPhoneTextView.text = savedText7e
        }
        if let savedText8e = UserDefaults.standard.string(forKey: "savedText8e") {
            humanResourceManagerEmailTextView.text = savedText8e
        }
        if let savedText9e = UserDefaults.standard.string(forKey: "savedText9e") {
            safetyManagerTextView.text = savedText9e
        }
        if let savedText10e = UserDefaults.standard.string(forKey: "savedText10e") {
            safetyManagerCellPhoneTextView.text = savedText10e
        }
        if let savedText11e = UserDefaults.standard.string(forKey: "savedText11e") {
            safetyManagerPhoneTextView.text = savedText11e
        }
        if let savedText12e = UserDefaults.standard.string(forKey: "savedText12e") {
            safetyManagerEmailTextView.text = savedText12e
        }
        if let savedText13e = UserDefaults.standard.string(forKey: "savedText13e") {
            federalEINTextView.text = savedText13e
        }
        if let savedText14e = UserDefaults.standard.string(forKey: "savedText14e") {
            unifiedBusinessInformationNumberTextView.text = savedText14e
        }
        if let savedText15e = UserDefaults.standard.string(forKey: "savedText15e") {
            stateBusinessLicenseNumberTextView.text = savedText15e
        }
        if let savedText16e = UserDefaults.standard.string(forKey: "savedText16e") {
            iAndIAccountWorkersCompRateTextView.text = savedText16e
        }
        if let savedText17e = UserDefaults.standard.string(forKey: "savedText17e") {
            employmentSecurityAccountRateTextView.text = savedText17e
        }
        if let savedText18e = UserDefaults.standard.string(forKey: "savedText18e") {
            personalFamilyLeaveAccountRateTextView.text = savedText18e
        }
        if let savedText19e = UserDefaults.standard.string(forKey: "savedText19e") {
            dunnsNumberTextField.text = savedText19e
        }
        if let savedText20e = UserDefaults.standard.string(forKey: "savedText20e") {
            secretaryOfStateRenewalDateTextField.text = savedText20e
        }
        if let savedText21e = UserDefaults.standard.string(forKey: "savedText21e") {
            locationOfFirstAidTextView.text = savedText21e
        }
        if let savedText22e = UserDefaults.standard.string(forKey: "savedText22e") {
            locationOfFireTextView.text = savedText22e
        }
        if let savedText23e = UserDefaults.standard.string(forKey: "savedText23e") {
            locationOfSafetyTextView.text = savedText23e
        }
        if let savedText24e = UserDefaults.standard.string(forKey: "savedText24e") {
            locationOfAccidentTextView.text = savedText24e
        }
        if let savedText25e = UserDefaults.standard.string(forKey: "savedText25e") {
            otherTwoTextView.text = savedText25e
        }
        if let savedText26e = UserDefaults.standard.string(forKey: "savedText26e") {
            otherTextView.text = savedText26e
        }
        if let savedText27e = UserDefaults.standard.string(forKey: "savedText27e") {
            otherPerDiemTextView.text = savedText27e
        }
        if let savedText28e = UserDefaults.standard.string(forKey: "savedText28e") {
            otherMileageTextView.text = savedText28e
        }
        if let savedText29e = UserDefaults.standard.string(forKey: "savedText29e") {
            lodgingPolicyTextView.text = savedText29e
        }
        if let savedText30e = UserDefaults.standard.string(forKey: "savedText30e") {
            otherCodesTextView.text = savedText30e
        }
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
    
        UserDefaults.standard.set(employerNameTextView.text, forKey: "savedText1e")
        UserDefaults.standard.set(ownerCEODDirectorTextView.text, forKey: "savedText2e")
        UserDefaults.standard.set(ownerCEODirectorPhoneTextView.text, forKey: "savedText3e")
        UserDefaults.standard.set(ownerCEODirectorEmailTextView.text, forKey: "savedText4e")
        UserDefaults.standard.set(humanResourceManagerTextView.text, forKey: "savedText5e")
        UserDefaults.standard.set(humanResourceManagerCellPhoneTextView.text, forKey: "savedText6e")
        UserDefaults.standard.set(humanResourceManagerPhoneTextView.text, forKey: "savedText7e")
        UserDefaults.standard.set(humanResourceManagerEmailTextView.text, forKey: "savedText8e")
        UserDefaults.standard.set(safetyManagerTextView.text, forKey: "savedText9e")
        UserDefaults.standard.set(safetyManagerCellPhoneTextView.text, forKey: "savedText10e")
        UserDefaults.standard.set(safetyManagerPhoneTextView.text, forKey: "savedText11e")
        UserDefaults.standard.set(safetyManagerEmailTextView.text, forKey: "savedText12e")
        UserDefaults.standard.set(federalEINTextView.text, forKey: "savedText13e")
        UserDefaults.standard.set(unifiedBusinessInformationNumberTextView.text, forKey: "savedText14e")
        UserDefaults.standard.set(stateBusinessLicenseNumberTextView.text, forKey: "savedText15e")
        UserDefaults.standard.set(iAndIAccountWorkersCompRateTextView.text, forKey: "savedText16e")
        UserDefaults.standard.set(employmentSecurityAccountRateTextView.text, forKey: "savedText17e")
        UserDefaults.standard.set(personalFamilyLeaveAccountRateTextView.text, forKey: "savedText18e")
        UserDefaults.standard.set(dunnsNumberTextField.text, forKey: "savedText19e")
        UserDefaults.standard.set(secretaryOfStateRenewalDateTextField.text, forKey: "savedText20e")
        UserDefaults.standard.set(locationOfFirstAidTextView.text, forKey: "savedText21e")
        UserDefaults.standard.set(locationOfFireTextView.text, forKey: "savedText22e")
        UserDefaults.standard.set(locationOfSafetyTextView.text, forKey: "savedText23e")
        UserDefaults.standard.set(locationOfAccidentTextView.text, forKey: "savedText24e")
        UserDefaults.standard.set(otherTwoTextView.text, forKey: "savedText25e")
        UserDefaults.standard.set(otherTextView.text, forKey: "savedText26e")
        UserDefaults.standard.set(otherPerDiemTextView.text, forKey: "savedText27e")
        UserDefaults.standard.set(otherMileageTextView.text, forKey: "savedText28e")
        UserDefaults.standard.set(lodgingPolicyTextView.text, forKey: "savedText29e")
        UserDefaults.standard.set(otherCodesTextView.text, forKey: "savedText30e")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        checkSelectedImages()
    }
    @IBAction func weeklyTapButton(_ sender: UIButton) {
       
        appDelegate.weekly = weeklyLabel.text ?? ""
      
        MyHelper.shared.selectedUnseleted(img: weeklyImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img1f)
    }
    
    @IBAction func biWeeklyTapButton(_ sender: UIButton) {
      
        appDelegate.biweekly = biWeeklyLabel.text ?? ""
       
        MyHelper.shared.selectedUnseleted(img: biWeeklyImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img2f)
    }
  
    @IBAction func mondayTapButton(_ sender: UIButton) {
       
        appDelegate.monday = mondayLabel.text ?? ""
        
        MyHelper.shared.selectedUnseleted(img: mondayImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img3f)
    }
    
    @IBAction func tuesdayTapButton(_ sender: UIButton) {
        
        appDelegate.tuesday = tuesdayLabel.text ?? ""
        
        MyHelper.shared.selectedUnseleted(img: tuesdayImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img4f)
    }
    
    @IBAction func wednesdayTapButton(_ sender: UIButton) {
      
        appDelegate.wednesday = wednesdayLabel.text ?? ""
        
        MyHelper.shared.selectedUnseleted(img: wednesdayImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img5f)
    }
    
    @IBAction func thursdayTapButton(_ sender: UIButton) {
       
        appDelegate.thursday = thursdayLabel.text ?? ""
        
        MyHelper.shared.selectedUnseleted(img: thursdayImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img6f)
    }

    @IBAction func fridayTapButton(_ sender: UIButton) {
       
        appDelegate.firday = firdayLabel.text ?? ""
        
        MyHelper.shared.selectedUnseleted(img: fridayImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img7f)
    }
    
    @IBAction func waPersonalTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: waPersonalImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img8f)
    }

    @IBAction func otherTwoTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: otherTwoImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img9f)
    }
    
    @IBAction func hourForEvery40HourTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: hourForEvery40HourImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img10f)
    }

    @IBAction func otherTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: otherImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img11f)
    }
    
    @IBAction func gsaRatesTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: gsaRatesImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img12f)
    }
    
    @IBAction func otherPerDiemButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: otherPerDiemBImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img13f)
    }
    
    @IBAction func gsaRatesMileageTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: gsaRatesMileageImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img14f)
    }
    
    @IBAction func otherMileageTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: otherMileageBImageView, sender: sender, vc: "EmployerInformationVC", key: KeysPermitVC.img15f)
    }
    
    @IBAction func clickOnShareButton(_ sender: UIButton) {
        alert()
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "Employer Information", tim: true, controller: self)
    }
    
    
    @IBAction func clickOnSaveButton(_ sender: UIButton) {
        
        alert()
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "Employer Information")
        AlertHelper.shared.alertController(title: "Human Resource Solutions", message: "This form has been save successfully", okTitle: "OK", controller: self) { _ in self.navigationController?.popViewController(animated: false) }
        
        appDelegate.employerName = employerNameTextView.text ?? ""
        appDelegate.ownerDirector = ownerCEODDirectorTextView.text ?? ""
        appDelegate.humanResourceManagerEmail = humanResourceManagerEmailTextView.text ?? ""
        appDelegate.federalEINT = federalEINTextView.text ?? ""
    }

    
    @IBAction func clickOnBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
        
    func alert(){
        
        [employerNameTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Employee Full Name.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [ownerCEODDirectorTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Owner CEO Director.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [ownerCEODirectorPhoneTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Owner CEO Director Phone.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [ownerCEODirectorEmailTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Owner CEO Director Email.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [humanResourceManagerTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Human Resource Manager.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [humanResourceManagerCellPhoneTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Human Resource Manager Cell Phone.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [humanResourceManagerPhoneTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Human Resource Manager Phone.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        
        [humanResourceManagerEmailTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Human Resource Manager Email.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [safetyManagerTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Human Resource Manager Email.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        
        [safetyManagerCellPhoneTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Safety Manager Cell Phone.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        
        [safetyManagerPhoneTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Safety Manager Phone.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [safetyManagerEmailTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Safety Manager Email.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [federalEINTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Federal EIN.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [unifiedBusinessInformationNumberTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Unified Business Information Number.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [stateBusinessLicenseNumberTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill State Business License Number.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [iAndIAccountWorkersCompRateTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill L&I Account Workers Comp Rate.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [employmentSecurityAccountRateTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Employment Security Account Rate.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [personalFamilyLeaveAccountRateTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Personal Family Leave Account Rate.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        
        [locationOfFirstAidTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Location Of First Aid Kits And List First Aid Provider(s).", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [locationOfFireTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Location Of Fire Extinguishers.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [locationOfSafetyTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Location Of Safety Bulletin Board.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        [locationOfAccidentTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Location Of Accident Prevention Plan.", okTitle: "Ok", controller: self, handler: { _ in })
                return
            }
        }
        
        var checkbox = false
        
        [weeklyButton,
         biWeeklyButton,].forEach { button in
            if button?.isSelected == true {
                
                checkbox = true
            }
        }
            if checkbox == true{
                
            }
            else {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Pay Frequency.", okTitle: "Ok", controller: self, handler: { _ in })
            }
        var checkbox2 = false
        
        [mondayButton,
         tuesdayButton,
         wednesdayButton,
         thursdayButton,
         fridayButton,].forEach { button in
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
        
        [waPersonalButton,
         otherTwoButton].forEach { button in
            if button?.isSelected == true {
                
                checkbox3 = true
            }
        }
            if checkbox3 == true{
                
            }
            else {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Personal Leave.", okTitle: "Ok", controller: self, handler: { _ in })
            }
        
        var checkbox4 = false
        
        [hourForEvery40HourButton,
         otherButton].forEach { button in
            if button?.isSelected == true {
                
                checkbox4 = true
            }
        }
            if checkbox4 == true{
                
            }
            else {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Sick Leave Policy.", okTitle: "Ok", controller: self, handler: { _ in })
            }
        
        var checkbox5 = false
        
        [gsaRatesButton,
         otherPerDiemButton].forEach { button in
            if button?.isSelected == true {
                
                checkbox5 = true
            }
        }
            if checkbox5 == true{
                
            }
            else {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Per Diem.", okTitle: "Ok", controller: self, handler: { _ in })
            }
        
        var checkbox6 = false
        
        [gsaRatesMileageButton,
         otherMileageButton].forEach { button in
            if button?.isSelected == true {
                
                checkbox6 = true
            }
         }
            if checkbox6 == true{
                
            }
            else {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Select One Checkbox In Mileage.", okTitle: "Ok", controller: self, handler: { _ in })
            }
        
    }

    
    func checkSelectedImages() {
        
        let nR = [weeklyImageView,
                  biWeeklyImageView,
                  mondayImageView,
                  tuesdayImageView,
                  wednesdayImageView,
                  thursdayImageView,
                  fridayImageView,
                  waPersonalImageView,
                  otherTwoImageView,
                  hourForEvery40HourImageView,
                  otherImageView,
                  gsaRatesImageView,
                  otherPerDiemBImageView,
                  gsaRatesMileageImageView,
                  otherMileageBImageView,
                  ]
        
        for key in 0..<KeysPermitVC.selectUnselectAllKeys5.count {
            switch appDelegate.dicWorkVC.value(forKey: KeysPermitVC.selectUnselectAllKeys5[key]) as? Int ?? -1 {
            case 0:
                switch key {
                case 0:
                    weeklyButton.isSelected = false
                case 1:
                    biWeeklyButton.isSelected = false
                case 2:
                    mondayButton.isSelected = false
                case 3:
                    tuesdayButton.isSelected = false
                case 4:
                    wednesdayButton.isSelected = false
                case 5:
                    thursdayButton.isSelected = false
                case 6:
                    fridayButton.isSelected = false
                case 7:
                    waPersonalButton.isSelected = false
                case 8:
                    otherTwoButton.isSelected = false
                case 9:
                    hourForEvery40HourButton.isSelected = false
                case 10:
                    otherButton.isSelected = false
                case 11:
                    gsaRatesButton.isSelected = false
                case 12:
                    otherPerDiemButton.isSelected = false
                case 13:
                    gsaRatesMileageButton.isSelected = false
                case 14:
                    otherMileageButton.isSelected = false
                    
                default:
                    break
                }
                nR[key]?.image = UIImage(named: "ic_uncheck")
            case 1:
                switch key {
                case 0:
                    weeklyButton.isSelected = true
                case 1:
                    biWeeklyButton.isSelected = true
                case 2:
                    mondayButton.isSelected = true
                case 3:
                    tuesdayButton.isSelected = true
                case 4:
                    wednesdayButton.isSelected = true
                case 5:
                    thursdayButton.isSelected = true
                case 6:
                    fridayButton.isSelected = true
                case 7:
                    waPersonalButton.isSelected = true
                case 8:
                    otherTwoButton.isSelected = true
                case 9:
                    hourForEvery40HourButton.isSelected = true
                case 10:
                    otherButton.isSelected = true
                case 11:
                    gsaRatesButton.isSelected = true
                case 12:
                    otherPerDiemButton.isSelected = true
                case 13:
                    gsaRatesMileageButton.isSelected = true
                case 14:
                    otherMileageButton.isSelected = true
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

