//
//  CompanyPolicyVC.swift
//  Human Resource Solutions
//
//  Created by koshal singh shekhawat on 03/06/24.
//

import UIKit

class CompanyPolicyVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var employerNameLabel: UILabel!

    @IBOutlet weak var employerLabel1: UILabel!
    @IBOutlet weak var employerLabel2: UILabel!
    @IBOutlet weak var employerLabel3: UILabel!
    @IBOutlet weak var employerLabel4: UILabel!
    @IBOutlet weak var employerLabel5: UILabel!
    @IBOutlet weak var employerLabel6: UILabel!
    @IBOutlet weak var employerLabel7: UILabel!
    @IBOutlet weak var employerLabel8: UILabel!
    @IBOutlet weak var employerLabel9: UILabel!
    @IBOutlet weak var employerLabel10: UILabel!
    @IBOutlet weak var employerLabel11: UILabel!
    @IBOutlet weak var employerLabel12: UILabel!
    @IBOutlet weak var employerLabel13: UILabel!
    @IBOutlet weak var employerLabel14: UILabel!
    @IBOutlet weak var employerLabel15: UILabel!
    @IBOutlet weak var employerLabel16: UILabel!
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    @IBOutlet weak var textField9: UITextField!
    
    
    @IBOutlet weak var payDayScheduleLabel: UILabel!
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        
        
        if let savedText1f = UserDefaults.standard.string(forKey: "savedText1f") {
            textField1.text = savedText1f
        }
        if let savedText2f = UserDefaults.standard.string(forKey: "savedText2f") {
            textField2.text = savedText2f
        }
        if let savedText3f = UserDefaults.standard.string(forKey: "savedText3f") {
            textField3.text = savedText3f
        }
        if let savedText4f = UserDefaults.standard.string(forKey: "savedText4f") {
            textField4.text = savedText4f
        }
        if let savedText5f = UserDefaults.standard.string(forKey: "savedText5f") {
            textField5.text = savedText5f
        }
        if let savedText6f = UserDefaults.standard.string(forKey: "savedText6f") {
            textField6.text = savedText6f
        }
        if let savedText7f = UserDefaults.standard.string(forKey: "savedText7f") {
            textField7.text = savedText7f
        }
        if let savedText8f = UserDefaults.standard.string(forKey: "savedText8f") {
            textField8.text = savedText8f
        }
        if let savedText9f = UserDefaults.standard.string(forKey: "savedText9f") {
            textField9.text = savedText9f
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.isNavigationBarHidden = true
        
        employerNameLabel.text = "\(appDelegate.employerName)"
        
        employerLabel1.text = "\(appDelegate.employerName)" + " depends on each employee making his/her full contribution daily. These policies reflect this necessity.  We appreciate you being part of our team."
     
        employerLabel2.text = "\(appDelegate.employerName)" + " retains our rights to be an “at will” employer in Washington State."
     
        employerLabel3.text = "\(appDelegate.employerName)" + " is an Equal Opportunity Employer.  All employees are responsible for supporting the concept of equal opportunity and diversity and assisting our Company in meeting these objectives."
        employerLabel4.text = "\(appDelegate.employerName)" + " follow all applicable Federal, State and Local laws for employees."
        
        employerLabel5.text = "\(appDelegate.employerName)" + " management may amend policies verbally or in writing to handle new or unaddressed problems."
        employerLabel6.text = "\(appDelegate.employerName)" + " intends on provided a challenging, safe workplace where commitment, hard work, and good decision making is encouraged and rewarded."
        employerLabel7.text = "\(appDelegate.employerName)" + " retains the right to use the following things as criteria for initial or continued employment:"
        employerLabel8.text = "\(appDelegate.employerName)" + " has these basic job descriptions."
        
        employerLabel9.text = "\(appDelegate.employerName)" + " Accident Prevention Plan is our safety policy.  Every attempt is made to modify this plan to reflect the actual conditions and hazards our employee face."
        employerLabel10.text = "The " + "\(appDelegate.employerName)" + " Accident Prevention Plan is part of our Company Policy, and the company disciplinary policy can be used to enforce it."
        
        employerLabel11.text = "\(appDelegate.employerName)" + " will provide necessary PPE to employees at no cost."
        
        employerLabel12.text = "The PPE remains property of " + "\(appDelegate.employerName)" + " and must be returned upon request of the Safety Manager."
        
        employerLabel13.text = "For assigned work related activities more than miles one way from your home, " + "\(appDelegate.employerName)" + " will pay mileage per the below rate."
        employerLabel14.text = "\(appDelegate.employerName)" + " does not pay “travel time” unless you are expected to or are performing work or driving a company vehicle.  It is the employees responsibility of the employee to arrive at the remote site on time."
        employerLabel15.text = "\(appDelegate.employerName)" + " pays diem for travel days, including the initial travel day at the GSA travel rate unless a different rate is specified on your employee information form."
        employerLabel16.text = "Receipts can be emailed into " + "\(appDelegate.humanResourceManagerEmail)" + " and will be reimbursed to the employee paying."
        
        payDayScheduleLabel.text =   "\(appDelegate.weekly) " + "\(appDelegate.biweekly)" + " on a " +  "\(appDelegate.monday) " + "\(appDelegate.tuesday) " + " \(appDelegate.wednesday) " + " \(appDelegate.thursday)" + " \(appDelegate.firday)"
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UserDefaults.standard.set(textField1.text, forKey: "savedText1f")
        UserDefaults.standard.set(textField2.text, forKey: "savedText2f")
        UserDefaults.standard.set(textField3.text, forKey: "savedText3f")
        UserDefaults.standard.set(textField4.text, forKey: "savedText4f")
        UserDefaults.standard.set(textField5.text, forKey: "savedText5f")
        UserDefaults.standard.set(textField6.text, forKey: "savedText6f")
        UserDefaults.standard.set(textField7.text, forKey: "savedText7f")
        UserDefaults.standard.set(textField8.text, forKey: "savedText8f")
        UserDefaults.standard.set(textField9.text, forKey: "savedText9f")
    }
    
   
    @IBAction func clickOnShareButton(_ sender: UIButton) {
        
            SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "Company Policy", tim: true, controller: self)
    }
    
    
    @IBAction func clickOnSaveButton(_ sender: UIButton) {
     
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "Company Policy")
        AlertHelper.shared.alertController(title: "Human Resource Solutions", message: "This form has been save successfully", okTitle: "OK", controller: self) { _ in
            self.navigationController?.popViewController(animated: false) }
    }

    @IBAction func clickOnBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
}
