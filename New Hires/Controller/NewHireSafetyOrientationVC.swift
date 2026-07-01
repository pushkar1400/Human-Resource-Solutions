//
//  NewHireSafetyOrientationVC.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 13/05/24.
//

import UIKit

class NewHireSafetyOrientationVC: UIViewController {

    //MARK: ->IBOutlet
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var employeeLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var supervisorTextView: UITextView!
    @IBOutlet weak var trainingDateTextView: UITextView!
    
   // REVIEW OF THE COMPANY ACCIDENT PREVENTION PROGRAM
    @IBOutlet weak var reviewOfTheCompanyButton1: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton2: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton3: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton4: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton5: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton6: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton7: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton8: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton9: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton10: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton11: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton12: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton13: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton14: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton15: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton16: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton17: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton18: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton19: UIButton!
    @IBOutlet weak var reviewOfTheCompanyButton20: UIButton!
    

    @IBOutlet weak var reviewOfTheCompanyImageView1: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView2: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView3: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView4: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView5: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView6: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView7: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView8: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView9: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView10: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView11: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView12: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView13: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView14: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView15: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView16: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView17: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView18: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView19: UIImageView!
    @IBOutlet weak var reviewOfTheCompanyImageView20: UIImageView!

    @IBOutlet weak var reviewOfTheCompanyTextView: UITextView!
    @IBOutlet weak var reviewOfTheCompanyTextView2: UITextView!
    
    @IBOutlet weak var employeeSignatureButton: UIButton!
    @IBOutlet weak var supervisorSignatureButton: UIButton!
    
    
    //MARK IF TRAINING IS REQUIRED
    
    @IBOutlet weak var employeeLabelSecond: UILabel!
    @IBOutlet weak var positionTrainingPlanLabel: UILabel!
    @IBOutlet weak var supervisorSecondTextView: UITextView!
    @IBOutlet weak var trainignYearTextView: UITextView!
    
    
    @IBOutlet weak var markIfTrainingButton1: UIButton!
    @IBOutlet weak var markIfTrainingButton2: UIButton!
    @IBOutlet weak var markIfTrainingButton3: UIButton!
    @IBOutlet weak var markIfTrainingButton4: UIButton!
    @IBOutlet weak var markIfTrainingButton5: UIButton!
    @IBOutlet weak var markIfTrainingButton6: UIButton!
    @IBOutlet weak var markIfTrainingButton7: UIButton!
    @IBOutlet weak var markIfTrainingButton8: UIButton!
    @IBOutlet weak var markIfTrainingButton9: UIButton!
    @IBOutlet weak var markIfTrainingButton10: UIButton!
    @IBOutlet weak var markIfTrainingButton11: UIButton!
    @IBOutlet weak var markIfTrainingButton12: UIButton!
    @IBOutlet weak var markIfTrainingButton13: UIButton!
    @IBOutlet weak var markIfTrainingButton14: UIButton!
    @IBOutlet weak var markIfTrainingButton15: UIButton!
    @IBOutlet weak var markIfTrainingButton16: UIButton!
    @IBOutlet weak var markIfTrainingButton17: UIButton!
    @IBOutlet weak var markIfTrainingButton18: UIButton!
    @IBOutlet weak var markIfTrainingButton19: UIButton!
    @IBOutlet weak var markIfTrainingButton20: UIButton!
    @IBOutlet weak var markIfTrainingButton21: UIButton!
    @IBOutlet weak var markIfTrainingButton22: UIButton!
    @IBOutlet weak var markIfTrainingButton23: UIButton!
    @IBOutlet weak var markIfTrainingButton24: UIButton!
    @IBOutlet weak var markIfTrainingButton25: UIButton!
    @IBOutlet weak var markIfTrainingButton26: UIButton!
    @IBOutlet weak var markIfTrainingButton27: UIButton!
    @IBOutlet weak var markIfTrainingButton28: UIButton!
    @IBOutlet weak var markIfTrainingButton29: UIButton!
    @IBOutlet weak var markIfTrainingButton30: UIButton!
    @IBOutlet weak var markIfTrainingButton31: UIButton!
    @IBOutlet weak var markIfTrainingButton32: UIButton!
    @IBOutlet weak var markIfTrainingButton33: UIButton!
    @IBOutlet weak var markIfTrainingButton34: UIButton!
    @IBOutlet weak var markIfTrainingButton35: UIButton!
    
    
    @IBOutlet weak var markIfTrainingImageView1: UIImageView!
    @IBOutlet weak var markIfTrainingImageView2: UIImageView!
    @IBOutlet weak var markIfTrainingImageView3: UIImageView!
    @IBOutlet weak var markIfTrainingImageView4: UIImageView!
    @IBOutlet weak var markIfTrainingImageView5: UIImageView!
    @IBOutlet weak var markIfTrainingImageView6: UIImageView!
    @IBOutlet weak var markIfTrainingImageView7: UIImageView!
    @IBOutlet weak var markIfTrainingImageView8: UIImageView!
    @IBOutlet weak var markIfTrainingImageView9: UIImageView!
    @IBOutlet weak var markIfTrainingImageView10: UIImageView!
    @IBOutlet weak var markIfTrainingImageView11: UIImageView!
    @IBOutlet weak var markIfTrainingImageView12: UIImageView!
    @IBOutlet weak var markIfTrainingImageView13: UIImageView!
    @IBOutlet weak var markIfTrainingImageView14: UIImageView!
    @IBOutlet weak var markIfTrainingImageView15: UIImageView!
    @IBOutlet weak var markIfTrainingImageView16: UIImageView!
    @IBOutlet weak var markIfTrainingImageView17: UIImageView!
    @IBOutlet weak var markIfTrainingImageView18: UIImageView!
    @IBOutlet weak var markIfTrainingImageView19: UIImageView!
    @IBOutlet weak var markIfTrainingImageView20: UIImageView!
    @IBOutlet weak var markIfTrainingImageView21: UIImageView!
    @IBOutlet weak var markIfTrainingImageView22: UIImageView!
    @IBOutlet weak var markIfTrainingImageView23: UIImageView!
    @IBOutlet weak var markIfTrainingImageView24: UIImageView!
    @IBOutlet weak var markIfTrainingImageView25: UIImageView!
    @IBOutlet weak var markIfTrainingImageView26: UIImageView!
    @IBOutlet weak var markIfTrainingImageView27: UIImageView!
    @IBOutlet weak var markIfTrainingImageView28: UIImageView!
    @IBOutlet weak var markIfTrainingImageView29: UIImageView!
    @IBOutlet weak var markIfTrainingImageView30: UIImageView!
    @IBOutlet weak var markIfTrainingImageView31: UIImageView!
    @IBOutlet weak var markIfTrainingImageView32: UIImageView!
    @IBOutlet weak var markIfTrainingImageView33: UIImageView!
    @IBOutlet weak var markIfTrainingImageView34: UIImageView!
    @IBOutlet weak var markIfTrainingImageView35: UIImageView!

    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        employeeLabel.text = "\(appDelegate.employerName)"
    
        self.navigationController?.isNavigationBarHidden = true
        
        if let savedText1b = UserDefaults.standard.string(forKey: "savedText1b") {
            employeeLabel.text = savedText1b
        }
        if let savedText2b = UserDefaults.standard.string(forKey: "savedText2b") {
            positionLabel.text = savedText2b
        }
        if let savedText3b = UserDefaults.standard.string(forKey: "savedText3b") {
            supervisorTextView.text = savedText3b
        }
        if let savedText4b = UserDefaults.standard.string(forKey: "savedText4b") {
            trainingDateTextView.text = savedText4b
        }
        if let savedText5b = UserDefaults.standard.string(forKey: "savedText5b") {
            employeeLabelSecond.text = savedText5b
        }
        if let savedText6b = UserDefaults.standard.string(forKey: "savedText6b") {
            positionTrainingPlanLabel.text = savedText6b
        }
        if let savedText7b = UserDefaults.standard.string(forKey: "savedText7b") {
            supervisorSecondTextView.text = savedText7b
        }
        if let savedText8b = UserDefaults.standard.string(forKey: "savedText8b") {
            trainignYearTextView.text = savedText8b
        }
        if let savedText9b = UserDefaults.standard.string(forKey: "savedText9b") {
            reviewOfTheCompanyTextView.text = savedText9b
        }
        if let savedText10b = UserDefaults.standard.string(forKey: "savedText10b") {
            reviewOfTheCompanyTextView2.text = savedText10b
        }
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        appDelegate.dicFPDOHSSkillSeet.setValue(employeeSignatureButton.imageView?.image, forKey: "employeeSignature")
        appDelegate.dicFPDOHSSkillSeet.setValue(supervisorSignatureButton.imageView?.image, forKey: "supervisorSignature")
        
        UserDefaults.standard.set(employeeLabel.text, forKey: "savedText1b")
        UserDefaults.standard.set(positionLabel.text, forKey: "savedText2b")
        UserDefaults.standard.set(supervisorTextView.text, forKey: "savedText3b")
        UserDefaults.standard.set(trainingDateTextView.text, forKey: "savedText4b")
        UserDefaults.standard.set(employeeLabelSecond.text, forKey: "savedText5b")
        UserDefaults.standard.set(positionTrainingPlanLabel.text, forKey: "savedText6b")
        UserDefaults.standard.set(supervisorSecondTextView.text, forKey: "savedText7b")
        UserDefaults.standard.set(trainignYearTextView.text, forKey: "savedText8b")
        UserDefaults.standard.set(reviewOfTheCompanyTextView.text, forKey: "savedText9b")
        UserDefaults.standard.set(reviewOfTheCompanyTextView2.text, forKey: "savedText10b")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        employeeSignatureButton.setImage(appDelegate.imgSignExcavation3.image, for: .normal)
        supervisorSignatureButton.setImage(appDelegate.imgSignExcavation4.image, for: .normal)
        
        appDelegate.dicNewHireSafety.setValue(employeeLabel.text, forKey: "employee")
        appDelegate.dicNewHireSafety.setValue(positionLabel.text, forKey: "position")
        appDelegate.dicNewHireSafety.setValue(employeeLabelSecond.text, forKey: "employee")
        appDelegate.dicNewHireSafety.setValue(positionTrainingPlanLabel.text, forKey: "position")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        setData()
        companyNameLabel.text = "\(appDelegate.employeeFirstName)"
        employeeLabel.text = "\(appDelegate.employeeFirstName)"
        positionLabel.text = "\(appDelegate.position)"
        employeeLabelSecond.text = "\(appDelegate.employeeFirstName)"
        positionTrainingPlanLabel.text = "\(appDelegate.position)"
        checkSelectedImages()
    }

    func setData(){
        self.employeeLabel.text = appDelegate.dicNewHireSafety.value(forKey: "employee") as? String
        self.positionLabel.text = appDelegate.dicNewHireSafety.value(forKey: "position") as? String
        self.employeeLabelSecond.text = appDelegate.dicNewHireSafety.value(forKey: "position") as? String
        self.positionTrainingPlanLabel.text = appDelegate.dicNewHireSafety.value(forKey: "position") as? String
        
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "employeeSignature") != nil {
            self.employeeSignatureButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "employeeSignature") as? UIImage, for: .normal)
        }
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "supervisorSignature") != nil {
            self.supervisorSignatureButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "supervisorSignature") as? UIImage, for: .normal)
        }
    }

    
    @IBAction func clickOnShareButton(_ sender: UIButton) {
        alert()
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "New Hire Safety Orientation", tim: true, controller: self)
    }
    
    
    @IBAction func clickOnSaveButton(_ sender: UIButton) {
     
        alert()
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "New Hire Safety Orientation")
        AlertHelper.shared.alertController(title: "Human Resource Solutions", message: "This form has been save successfully", okTitle: "OK", controller: self) { _ in self.navigationController?.popViewController(animated: false) }
    }

    @IBAction func clickOnBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    func alert(){
        
        [supervisorTextView].forEach { txn in
            if txn.text?.isEmpty == true {
                AlertHelper.shared.alertController(title: "Alert", message: "Please Fill Supervisor.", okTitle: "Ok", controller: self, handler: { _ in })
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
        
    }
    
    // REVIEW OF THE COMPANY ACCIDENT PREVENTION PROGRAM
    @IBAction func reviewOfTheCompanyTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView1, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img1a)
    }
    @IBAction func reviewOfTheCompanyTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView2, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img2a)
    }
    @IBAction func reviewOfTheCompanyTapButton3(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView3, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img3a)
    }
    @IBAction func reviewOfTheCompanyTapButton4(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView4, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img4a)
    }
    @IBAction func reviewOfTheCompanyTapButton5(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView5, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img5a)
    }
    @IBAction func reviewOfTheCompanyTapButton6(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView6, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img6a)
    }
    @IBAction func reviewOfTheCompanyTapButton7(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView7, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img7a)
    }
    @IBAction func reviewOfTheCompanyTapButton8(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView8, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img8a)
    }
    @IBAction func reviewOfTheCompanyTapButton9(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView9, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img9a)
    }
    @IBAction func reviewOfTheCompanyTapButton10(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView10, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img10a)
    }
    @IBAction func reviewOfTheCompanyTapButton11(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView11, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img11a)
    }
    @IBAction func reviewOfTheCompanyTapButton12(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView12, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img12a)
    }
    @IBAction func reviewOfTheCompanyTapButton13(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView13, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img13a)
    }
    @IBAction func reviewOfTheCompanyTapButton14(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView14, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img14a)
    }
    @IBAction func reviewOfTheCompanyTapButton15(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView15, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img15a)
    }
    @IBAction func reviewOfTheCompanyTapButton16(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView16, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img16a)
    }
    @IBAction func reviewOfTheCompanyTapButton17(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView17, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img17a)
    }
    @IBAction func reviewOfTheCompanyTapButton18(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView18, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img18a)
    }
    @IBAction func reviewOfTheCompanyTapButton19(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView19, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img19a)
    }
    @IBAction func reviewOfTheCompanyTapButton20(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: reviewOfTheCompanyImageView20, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img20a)
    }
    @IBAction func employeeSignatureTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 3
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func supervisorSignatureTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 4
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    //MARK IF TRAINING IS REQUIRED
    
    @IBAction func markIfTrainingTapButton1(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView1, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img21a)
    }
    @IBAction func markIfTrainingTapButton2(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView2, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img22a)
    }
    @IBAction func markIfTrainingTapButton3(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView3, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img23a)
    }
    @IBAction func markIfTrainingTapButton4(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView4, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img24a)
    }
    @IBAction func markIfTrainingTapButton5(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView5, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img25a)
    }
    @IBAction func markIfTrainingTapButton6(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView6, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img26a)
    }
    @IBAction func markIfTrainingTapButton7(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView7, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img27a)
    }
    @IBAction func markIfTrainingTapButton8(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView8, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img28a)
    }
    @IBAction func markIfTrainingTapButton9(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView9, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img29a)
    }
    @IBAction func markIfTrainingTapButton10(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView10, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img30a)
    }
    @IBAction func markIfTrainingTapButton11(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView11, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img31a)
    }
    @IBAction func markIfTrainingTapButton12(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView12, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img32a)
    }
    @IBAction func markIfTrainingTapButton13(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView13, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img33a)
    }
    @IBAction func markIfTrainingTapButton14(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView14, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img34a)
    }
    @IBAction func markIfTrainingTapButton15(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView15, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img35a)
    }
    @IBAction func markIfTrainingTapButton16(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView16, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img36a)
    }
    @IBAction func markIfTrainingTapButton17(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView17, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img37a)
    }
    @IBAction func markIfTrainingTapButton18(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView18, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img38a)
    }
    @IBAction func markIfTrainingTapButton19(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView19, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img39a)
    }
    @IBAction func markIfTrainingTapButton20(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView20, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img40a)
    }
    @IBAction func markIfTrainingTapButton21(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView21, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img41a)
    }
    @IBAction func markIfTrainingTapButton22(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView22, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img42a)
    }
    @IBAction func markIfTrainingTapButton23(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView23, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img43a)
    }
    @IBAction func markIfTrainingTapButton24(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView24, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img44a)
    }
    @IBAction func markIfTrainingTapButton25(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView25, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img45a)
    }
    @IBAction func markIfTrainingTapButton26(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView26, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img46a)
    }
    @IBAction func markIfTrainingTapButton27(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView27, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img47a)
    }
    @IBAction func markIfTrainingTapButton28(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView28, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img48a)
    }
    @IBAction func markIfTrainingTapButton29(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView29, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img49a)
    }
    @IBAction func markIfTrainingTapButton30(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView30, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img50a)
    }
    @IBAction func markIfTrainingTapButton31(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView31, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img51a)
    }
    @IBAction func markIfTrainingTapButton32(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView32, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img52a)
    }
    @IBAction func markIfTrainingTapButton33(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView33, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img53a)
    }
    @IBAction func markIfTrainingTapButton34(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView34, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img54a)
    }
    @IBAction func markIfTrainingTapButton35(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: markIfTrainingImageView35, sender: sender, vc: "NewHireSafetyOrientationVC", key: KeysPermitVC.img55a)
    }
    
    
    func checkSelectedImages() {
        
        let nR = [reviewOfTheCompanyImageView1,
                  reviewOfTheCompanyImageView2,
                  reviewOfTheCompanyImageView3,
                  reviewOfTheCompanyImageView4,
                  reviewOfTheCompanyImageView5,
                  reviewOfTheCompanyImageView6,
                  reviewOfTheCompanyImageView7,
                  reviewOfTheCompanyImageView8,
                  reviewOfTheCompanyImageView9,
                  reviewOfTheCompanyImageView10,
                  reviewOfTheCompanyImageView11,
                  reviewOfTheCompanyImageView12,
                  reviewOfTheCompanyImageView13,
                  reviewOfTheCompanyImageView14,
                  reviewOfTheCompanyImageView15,
                  reviewOfTheCompanyImageView16,
                  reviewOfTheCompanyImageView17,
                  reviewOfTheCompanyImageView18,
                  reviewOfTheCompanyImageView19,
                  reviewOfTheCompanyImageView20,
                  markIfTrainingImageView1,
                  markIfTrainingImageView2,
                  markIfTrainingImageView3,
                  markIfTrainingImageView4,
                  markIfTrainingImageView5,
                  markIfTrainingImageView6,
                  markIfTrainingImageView7,
                  markIfTrainingImageView8,
                  markIfTrainingImageView9,
                  markIfTrainingImageView10,
                  markIfTrainingImageView11,
                  markIfTrainingImageView12,
                  markIfTrainingImageView13,
                  markIfTrainingImageView14,
                  markIfTrainingImageView15,
                  markIfTrainingImageView16,
                  markIfTrainingImageView17,
                  markIfTrainingImageView18,
                  markIfTrainingImageView19,
                  markIfTrainingImageView20,
                  markIfTrainingImageView21,
                  markIfTrainingImageView22,
                  markIfTrainingImageView23,
                  markIfTrainingImageView24,
                  markIfTrainingImageView25,
                  markIfTrainingImageView26,
                  markIfTrainingImageView27,
                  markIfTrainingImageView28,
                  markIfTrainingImageView29,
                  markIfTrainingImageView30,
                  markIfTrainingImageView31,
                  markIfTrainingImageView32,
                  markIfTrainingImageView33,
                  markIfTrainingImageView34,
                  markIfTrainingImageView35,
        ]
        
        for key in 0..<KeysPermitVC.selectUnselectAllKeys2.count {
            switch appDelegate.dicWorkVC.value(forKey: KeysPermitVC.selectUnselectAllKeys2[key]) as? Int ?? -1 {
            case 0:
                switch key {
                case 0:
                    reviewOfTheCompanyButton1.isSelected = false
                case 1:
                    reviewOfTheCompanyButton2.isSelected = false
                case 2:
                    reviewOfTheCompanyButton3.isSelected = false
                case 3:
                    reviewOfTheCompanyButton4.isSelected = false
                case 4:
                    reviewOfTheCompanyButton5.isSelected = false
                case 5:
                    reviewOfTheCompanyButton6.isSelected = false
                case 6:
                    reviewOfTheCompanyButton7.isSelected = false
                case 7:
                    reviewOfTheCompanyButton8.isSelected = false
                case 8:
                    reviewOfTheCompanyButton9.isSelected = false
                case 9:
                    reviewOfTheCompanyButton10.isSelected = false
                case 10:
                    reviewOfTheCompanyButton11.isSelected = false
                case 11:
                    reviewOfTheCompanyButton12.isSelected = false
                case 12:
                    reviewOfTheCompanyButton13.isSelected = false
                case 13:
                    reviewOfTheCompanyButton14.isSelected = false
                case 14:
                    reviewOfTheCompanyButton15.isSelected = false
                case 15:
                    reviewOfTheCompanyButton16.isSelected = false
                case 16:
                    reviewOfTheCompanyButton17.isSelected = false
                case 17:
                    reviewOfTheCompanyButton18.isSelected = false
                case 18:
                    reviewOfTheCompanyButton19.isSelected = false
                case 19:
                    reviewOfTheCompanyButton20.isSelected = false
                case 20:
                    markIfTrainingButton1.isSelected = false
                case 21:
                    markIfTrainingButton2.isSelected = false
                case 22:
                    markIfTrainingButton3.isSelected = false
                case 23:
                    markIfTrainingButton4.isSelected = false
                case 24:
                    markIfTrainingButton5.isSelected = false
                case 25:
                    markIfTrainingButton6.isSelected = false
                case 26:
                    markIfTrainingButton7.isSelected = false
                case 27:
                    markIfTrainingButton8.isSelected = false
                case 28:
                    markIfTrainingButton9.isSelected = false
                case 29:
                    markIfTrainingButton10.isSelected = false
                case 30:
                    markIfTrainingButton11.isSelected = false
                case 31:
                    markIfTrainingButton12.isSelected = false
                case 32:
                    markIfTrainingButton13.isSelected = false
                case 33:
                    markIfTrainingButton14.isSelected = false
                case 34:
                    markIfTrainingButton15.isSelected = false
                case 35:
                    markIfTrainingButton16.isSelected = false
                case 36:
                    markIfTrainingButton17.isSelected = false
                case 37:
                    markIfTrainingButton18.isSelected = false
                case 38:
                    markIfTrainingButton19.isSelected = false
                case 39:
                    markIfTrainingButton20.isSelected = false
                case 40:
                    markIfTrainingButton21.isSelected = false
                case 41:
                    markIfTrainingButton22.isSelected = false
                case 42:
                    markIfTrainingButton23.isSelected = false
                case 43:
                    markIfTrainingButton24.isSelected = false
                case 44:
                    markIfTrainingButton25.isSelected = false
                case 45:
                    markIfTrainingButton26.isSelected = false
                case 46:
                    markIfTrainingButton27.isSelected = false
                case 47:
                    markIfTrainingButton28.isSelected = false
                case 48:
                    markIfTrainingButton29.isSelected = false
                case 49:
                    markIfTrainingButton30.isSelected = false
                case 50:
                    markIfTrainingButton31.isSelected = false
                case 51:
                    markIfTrainingButton32.isSelected = false
                case 52:
                    markIfTrainingButton33.isSelected = false
                case 53:
                    markIfTrainingButton34.isSelected = false
                case 54:
                    markIfTrainingButton35.isSelected = false
                default:
                    break
                }
                nR[key]?.image = UIImage(named: "ic_uncheck")
            case 1:
                switch key {
                case 0:
                    reviewOfTheCompanyButton1.isSelected = true
                case 1:
                    reviewOfTheCompanyButton2.isSelected = true
                case 2:
                    reviewOfTheCompanyButton3.isSelected = true
                case 3:
                    reviewOfTheCompanyButton4.isSelected = true
                case 4:
                    reviewOfTheCompanyButton5.isSelected = true
                case 5:
                    reviewOfTheCompanyButton6.isSelected = true
                case 6:
                    reviewOfTheCompanyButton7.isSelected = true
                case 7:
                    reviewOfTheCompanyButton8.isSelected = true
                case 8:
                    reviewOfTheCompanyButton9.isSelected = true
                case 9:
                    reviewOfTheCompanyButton10.isSelected = true
                case 10:
                    reviewOfTheCompanyButton11.isSelected = true
                case 11:
                    reviewOfTheCompanyButton12.isSelected = true
                case 12:
                    reviewOfTheCompanyButton13.isSelected = true
                case 13:
                    reviewOfTheCompanyButton14.isSelected = true
                case 14:
                    reviewOfTheCompanyButton15.isSelected = true
                case 15:
                    reviewOfTheCompanyButton16.isSelected = true
                case 16:
                    reviewOfTheCompanyButton17.isSelected = true
                case 17:
                    reviewOfTheCompanyButton18.isSelected = true
                case 18:
                    reviewOfTheCompanyButton19.isSelected = true
                case 19:
                    reviewOfTheCompanyButton20.isSelected = true
                case 20:
                    markIfTrainingButton1.isSelected = true
                case 21:
                    markIfTrainingButton2.isSelected = true
                case 22:
                    markIfTrainingButton3.isSelected = true
                case 23:
                    markIfTrainingButton4.isSelected = true
                case 24:
                    markIfTrainingButton5.isSelected = true
                case 25:
                    markIfTrainingButton6.isSelected = true
                case 26:
                    markIfTrainingButton7.isSelected = true
                case 27:
                    markIfTrainingButton8.isSelected = true
                case 28:
                    markIfTrainingButton9.isSelected = true
                case 29:
                    markIfTrainingButton10.isSelected = true
                case 30:
                    markIfTrainingButton11.isSelected = true
                case 31:
                    markIfTrainingButton12.isSelected = true
                case 32:
                    markIfTrainingButton13.isSelected = true
                case 33:
                    markIfTrainingButton14.isSelected = true
                case 34:
                    markIfTrainingButton15.isSelected = true
                case 35:
                    markIfTrainingButton16.isSelected = true
                case 36:
                    markIfTrainingButton17.isSelected = true
                case 37:
                    markIfTrainingButton18.isSelected = true
                case 38:
                    markIfTrainingButton19.isSelected = true
                case 39:
                    markIfTrainingButton20.isSelected = true
                case 40:
                    markIfTrainingButton21.isSelected = true
                case 41:
                    markIfTrainingButton22.isSelected = true
                case 42:
                    markIfTrainingButton23.isSelected = true
                case 43:
                    markIfTrainingButton24.isSelected = true
                case 44:
                    markIfTrainingButton25.isSelected = true
                case 45:
                    markIfTrainingButton26.isSelected = true
                case 46:
                    markIfTrainingButton27.isSelected = true
                case 47:
                    markIfTrainingButton28.isSelected = true
                case 48:
                    markIfTrainingButton29.isSelected = true
                case 49:
                    markIfTrainingButton30.isSelected = true
                case 50:
                    markIfTrainingButton31.isSelected = true
                case 51:
                    markIfTrainingButton32.isSelected = true
                case 52:
                    markIfTrainingButton33.isSelected = true
                case 53:
                    markIfTrainingButton34.isSelected = true
                case 54:
                    markIfTrainingButton35.isSelected = true
                
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

