//
//  HumanResourceSolutionsVC.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 13/05/24.
//

import UIKit

class HumanResourceSolutionsVC: UIViewController {
    
    //MARK: -> IBOutlet
    
     @IBOutlet weak var humanResourcsSolutionsView: UIView!
     @IBOutlet weak var employerInformationView: UIView!
     @IBOutlet weak var employeeInformationView: UIView!
     @IBOutlet weak var employerCompanyPolicyView: UIView!
     @IBOutlet weak var employerSafetyOrientationView: UIView!
     @IBOutlet weak var w9View: UIView!
     @IBOutlet weak var view19: UIView!
     @IBOutlet weak var directDepositView: UIView!
     
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
     override func viewDidLoad() {
         super.viewDidLoad()
         
         DispatchQueue.main.async { [self] in
             UserDefaults.standard.setValue(appDelegate.todayDate, forKey: "strDate")
             UserDefaults.standard.setValue(appDelegate.employerName, forKey: "lastName")
        
     }
        
         //MARK: -> borderWidth and borderColor
         
         humanResourcsSolutionsView.layer.borderWidth = 2.0
         humanResourcsSolutionsView.layer.cornerRadius = 20
         humanResourcsSolutionsView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
         
         employerInformationView.layer.borderWidth = 2.0
         employerInformationView.layer.cornerRadius = 20
         employerInformationView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
         
         employeeInformationView.layer.borderWidth = 2.0
         employeeInformationView.layer.cornerRadius = 20
         employeeInformationView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
         
         employerCompanyPolicyView.layer.borderWidth = 2.0
         employerCompanyPolicyView.layer.cornerRadius = 20
         employerCompanyPolicyView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
         
         employerSafetyOrientationView.layer.borderWidth = 2.0
         employerSafetyOrientationView.layer.cornerRadius = 20
         employerSafetyOrientationView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
         
         w9View.layer.borderWidth = 2.0
         w9View.layer.cornerRadius = 20
         w9View.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
         
         view19.layer.borderWidth = 2.0
         view19.layer.cornerRadius = 20
         view19.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
         
         directDepositView.layer.borderWidth = 2.0
         directDepositView.layer.cornerRadius = 20
         directDepositView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
     }
    
    @IBAction func employerInformationButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "EmployerInformationVC") as! EmployerInformationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func employerCompanyPolicyButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "CompanyPolicyVC") as! CompanyPolicyVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func employeeInformationButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "EmployeeInformationVC") as! EmployeeInformationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func employeeSafetyOrientationButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "NewHireSafetyOrientationVC") as! NewHireSafetyOrientationVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func w9Button(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "EmployeesWithholdingCertificateVC") as! EmployeesWithholdingCertificateVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func one9Button(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "EmploymentEligibilityVerificationVC") as! EmploymentEligibilityVerificationVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func directDepositFormButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "DirectDepositVC") as! DirectDepositVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
