//
//  EmploymentEligibilityVerificationVC.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 13/05/24.
//

import UIKit

class EmploymentEligibilityVerificationVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var section1LastNameTextView: UITextView!
    @IBOutlet weak var section1FirstNameTextView: UITextView!
    @IBOutlet weak var section1MiddleInitialTextField: UITextField!
    @IBOutlet weak var section1OtherLastNameTextView: UITextView!
    @IBOutlet weak var section1AddressTextView: UITextView!
    @IBOutlet weak var section1AptNumberTextField: UITextField!
    @IBOutlet weak var section1CityOrTownTextView: UITextView!
    @IBOutlet weak var section1StateTextField: UITextField!
    @IBOutlet weak var section1ZipCodeTextView: UITextView!
    @IBOutlet weak var section1DOBTextView: UITextView!
    @IBOutlet weak var usSocialSecurityNumberTextField1: UITextField!
    @IBOutlet weak var usSocialSecurityNumberTextField2: UITextField!
    @IBOutlet weak var usSocialSecurityNumberTextField3: UITextField!
    @IBOutlet weak var usSocialSecurityNumberTextField4: UITextField!
    @IBOutlet weak var usSocialSecurityNumberTextField5: UITextField!
    @IBOutlet weak var usSocialSecurityNumberTextField6: UITextField!
    @IBOutlet weak var usSocialSecurityNumberTextField7: UITextField!
    @IBOutlet weak var usSocialSecurityNumberTextField8: UITextField!
    @IBOutlet weak var usSocialSecurityNumberTextField9: UITextField!
    @IBOutlet weak var section1EmployeesEmailAddressTextView: UITextView!
    @IBOutlet weak var section1EmployeesTelephoneNumberTextView: UITextView!
    @IBOutlet weak var aLawfulTextField: UITextField!
    @IBOutlet weak var anAlienTextField: UITextField!
    @IBOutlet weak var alienTextField: UITextField!
    @IBOutlet weak var formNumberTextField: UITextField!
    @IBOutlet weak var foreginTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var signatureOfEmployeeButton: UIButton!
    @IBOutlet weak var todaysDateTextView: UITextView!
    
    @IBOutlet weak var aCitizenButton: UIButton!
    @IBOutlet weak var aCitizenImageView: UIImageView!
    
    @IBOutlet weak var aNoncitizenButton: UIButton!
    @IBOutlet weak var aNoncitizenImageView: UIImageView!
    
    @IBOutlet weak var aLawfulButton: UIButton!
    @IBOutlet weak var aLawfulImageView: UIImageView!
    
    @IBOutlet weak var anAlienButton: UIButton!
    @IBOutlet weak var anAlienImageView: UIImageView!
    
    @IBOutlet weak var preparerButton: UIButton!
    @IBOutlet weak var preparerImageView: UIImageView!
    @IBOutlet weak var apreparerButton: UIButton!
    @IBOutlet weak var apreparerImageView: UIImageView!
    @IBOutlet weak var sigantureOfPrepareOrTranslatorButton: UIButton!
    @IBOutlet weak var preparerTodaysDateTextView: UITextView!
    @IBOutlet weak var preparerLastNameTextView: UITextView!
    @IBOutlet weak var preparerFirstNameTextView: UITextView!
    @IBOutlet weak var preparerAddressTextView: UITextView!
    @IBOutlet weak var preparerCityOrTowTextView: UITextView!
    @IBOutlet weak var preparerStateTexField: UITextField!
    @IBOutlet weak var preparerZIPCodeTextView: UITextField!
    @IBOutlet weak var section2LastNameTextView: UITextView!
    @IBOutlet weak var section2FirstNameTextView: UITextView!
    @IBOutlet weak var section2MITextField: UITextField!
    @IBOutlet weak var section2CitizenshipTextView: UITextView!
    @IBOutlet weak var section2ListATextView1: UITextView!
    @IBOutlet weak var section2ListATextView2: UITextView!
    @IBOutlet weak var section2ListATextView3: UITextView!
    @IBOutlet weak var section2ListATextView4: UITextView!
    @IBOutlet weak var section2ListATextView5: UITextView!
    @IBOutlet weak var section2ListATextView6: UITextView!
    @IBOutlet weak var section2ListATextView7: UITextView!
    @IBOutlet weak var section2ListATextView8: UITextView!
    @IBOutlet weak var section2ListATextView9: UITextView!
    @IBOutlet weak var section2ListATextView10: UITextView!
    @IBOutlet weak var section2ListATextView11: UITextView!
    @IBOutlet weak var section2ListATextView12: UITextView!
    @IBOutlet weak var section2ListBTextField1: UITextField!
    @IBOutlet weak var section2ListBTextField2: UITextField!
    @IBOutlet weak var section2ListBTextField3: UITextField!
    @IBOutlet weak var section2ListBTextField4: UITextField!
    @IBOutlet weak var section2ListCTextField1: UITextField!
    @IBOutlet weak var section2ListCTextField2: UITextField!
    @IBOutlet weak var section2ListCTextField3: UITextField!
    @IBOutlet weak var section2ListCTextField4: UITextField!
    @IBOutlet weak var certificationTextField: UITextField!
    @IBOutlet weak var signatureOfEmployerOrAuthorizedRepresentativeButton: UIButton!
    @IBOutlet weak var section2TodaysDateTextView: UITextView!
    @IBOutlet weak var section2TitleOfEmployerTextView: UITextView!
    @IBOutlet weak var section2LastNameOfEmployerOrAuthorizedTextView: UITextView!
    @IBOutlet weak var section2FirstNameOfEmployerOrAuthorizedTextView: UITextView!
    @IBOutlet weak var section2EmployersBusinessTextView: UITextView!
    @IBOutlet weak var section2EmployersBusinessOrOrganizationAddressTextVIew: UITextView!
    @IBOutlet weak var section2CityOrTowTextView: UITextView!
    @IBOutlet weak var section2TextField: UITextField!
    @IBOutlet weak var section2ZIPCodeTextField: UITextField!
    @IBOutlet weak var section3LastNameTextView: UITextView!
    @IBOutlet weak var section3FirstNameTextView: UITextView!
    @IBOutlet weak var section3MiddleInitialTextView: UITextView!
    @IBOutlet weak var section3DateTextView: UITextView!
    @IBOutlet weak var section3DocumentTextView: UITextView!
    @IBOutlet weak var section3DocumentNumberTextView: UITextView!
    @IBOutlet weak var section3ExpirationDateTextView: UITextView!
    @IBOutlet weak var section3SignatureOfEmployerButton: UIButton!
    @IBOutlet weak var section3TodaysDateTextView: UITextView!
    @IBOutlet weak var section3TitleOfEmployerTextView: UITextView!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        
        if let savedText1c = UserDefaults.standard.string(forKey: "savedText1c") {
            section1LastNameTextView.text = savedText1c
        }
        if let savedText2c = UserDefaults.standard.string(forKey: "savedText2c") {
            section1FirstNameTextView.text = savedText2c
        }
        if let savedText3c = UserDefaults.standard.string(forKey: "savedText3c") {
            section1MiddleInitialTextField.text = savedText3c
        }
        if let savedText4c = UserDefaults.standard.string(forKey: "savedText4c") {
            section1OtherLastNameTextView.text = savedText4c
        }
        if let savedText5c = UserDefaults.standard.string(forKey: "savedText5c") {
            section1AddressTextView.text = savedText5c
        }
        if let savedText6c = UserDefaults.standard.string(forKey: "savedText6c") {
            section1AptNumberTextField.text = savedText6c
        }
        if let savedText7c = UserDefaults.standard.string(forKey: "savedText7c") {
            section1CityOrTownTextView.text = savedText7c
        }
        if let savedText8c = UserDefaults.standard.string(forKey: "savedText8c") {
            section1StateTextField.text = savedText8c
        }
        if let savedText9c = UserDefaults.standard.string(forKey: "savedText9c") {
            section1ZipCodeTextView.text = savedText9c
        }
        if let savedText10c = UserDefaults.standard.string(forKey: "savedText10c") {
            section1DOBTextView.text = savedText10c
        }
        if let savedText11c = UserDefaults.standard.string(forKey: "savedText11c") {
            usSocialSecurityNumberTextField1.text = savedText11c
        }
        if let savedText12c = UserDefaults.standard.string(forKey: "savedText12c") {
            usSocialSecurityNumberTextField2.text = savedText12c
        }
        if let savedText13c = UserDefaults.standard.string(forKey: "savedText13c") {
            usSocialSecurityNumberTextField3.text = savedText13c
        }
        if let savedText14c = UserDefaults.standard.string(forKey: "savedText14c") {
            usSocialSecurityNumberTextField4.text = savedText14c
        }
        if let savedText15c = UserDefaults.standard.string(forKey: "savedText15c") {
            usSocialSecurityNumberTextField5.text = savedText15c
        }
        if let savedText16c = UserDefaults.standard.string(forKey: "savedText16c") {
            usSocialSecurityNumberTextField6.text = savedText16c
        }
        if let savedText17c = UserDefaults.standard.string(forKey: "savedText17c") {
            usSocialSecurityNumberTextField7.text = savedText17c
        }
        if let savedText18c = UserDefaults.standard.string(forKey: "savedText18c") {
            usSocialSecurityNumberTextField8.text = savedText18c
        }
        if let savedText19c = UserDefaults.standard.string(forKey: "savedText19c") {
            usSocialSecurityNumberTextField9.text = savedText19c
        }
        if let savedText20c = UserDefaults.standard.string(forKey: "savedText20c") {
            section1EmployeesEmailAddressTextView.text = savedText20c
        }
        if let savedText21c = UserDefaults.standard.string(forKey: "savedText21c") {
            section1EmployeesTelephoneNumberTextView.text = savedText21c
        }
        if let savedText22c = UserDefaults.standard.string(forKey: "savedText22c") {
            aLawfulTextField.text = savedText22c
        }
        if let savedText23c = UserDefaults.standard.string(forKey: "savedText23c") {
            anAlienTextField.text = savedText23c
        }
        if let savedText24c = UserDefaults.standard.string(forKey: "savedText24c") {
            alienTextField.text = savedText24c
        }
        if let savedText25c = UserDefaults.standard.string(forKey: "savedText25c") {
            formNumberTextField.text = savedText25c
        }
        if let savedText26c = UserDefaults.standard.string(forKey: "savedText26c") {
            foreginTextField.text = savedText26c
        }
        if let savedText27c = UserDefaults.standard.string(forKey: "savedText27c") {
            countryTextField.text = savedText27c
        }
        if let savedText28c = UserDefaults.standard.string(forKey: "savedText28c") {
            todaysDateTextView.text = savedText28c
        }
        if let savedText29c = UserDefaults.standard.string(forKey: "savedText29c") {
            preparerTodaysDateTextView.text = savedText29c
        }
        if let savedText30c = UserDefaults.standard.string(forKey: "savedText30c") {
            preparerLastNameTextView.text = savedText30c
        }
        if let savedText31c = UserDefaults.standard.string(forKey: "savedText31c") {
            preparerFirstNameTextView.text = savedText31c
        }
        if let savedText32c = UserDefaults.standard.string(forKey: "savedText32c") {
            preparerAddressTextView.text = savedText32c
        }
        if let savedText33c = UserDefaults.standard.string(forKey: "savedText33c") {
            preparerCityOrTowTextView.text = savedText33c
        }
        if let savedText34c = UserDefaults.standard.string(forKey: "savedText34c") {
            preparerStateTexField.text = savedText34c
        }
        if let savedText35c = UserDefaults.standard.string(forKey: "savedText35c") {
            preparerZIPCodeTextView.text = savedText35c
        }
        if let savedText36c = UserDefaults.standard.string(forKey: "savedText36c") {
            section2LastNameTextView.text = savedText36c
        }
        if let savedText37c = UserDefaults.standard.string(forKey: "savedText37c") {
            section2FirstNameTextView.text = savedText37c
        }
        if let savedText38c = UserDefaults.standard.string(forKey: "savedText38c") {
            section2MITextField.text = savedText38c
        }
        if let savedText39c = UserDefaults.standard.string(forKey: "savedText39c") {
            section2CitizenshipTextView.text = savedText39c
        }
        if let savedText40c = UserDefaults.standard.string(forKey: "savedText40c") {
            section2ListATextView1.text = savedText40c
        }
        if let savedText41c = UserDefaults.standard.string(forKey: "savedText41c") {
            section2ListATextView2.text = savedText41c
        }
        if let savedText42c = UserDefaults.standard.string(forKey: "savedText42c") {
            section2ListATextView3.text = savedText42c
        }
        if let savedText43c = UserDefaults.standard.string(forKey: "savedText43c") {
            section2ListATextView4.text = savedText43c
        }
        if let savedText44c = UserDefaults.standard.string(forKey: "savedText44c") {
            section2ListATextView5.text = savedText44c
        }
        if let savedText45c = UserDefaults.standard.string(forKey: "savedText45c") {
            section2ListATextView6.text = savedText45c
        }
        if let savedText46c = UserDefaults.standard.string(forKey: "savedText46c") {
            section2ListATextView7.text = savedText46c
        }
        if let savedText47c = UserDefaults.standard.string(forKey: "savedText47c") {
            section2ListATextView8.text = savedText47c
        }
        if let savedText48c = UserDefaults.standard.string(forKey: "savedText48c") {
            section2ListATextView9.text = savedText48c
        }
        if let savedText49c = UserDefaults.standard.string(forKey: "savedText49c") {
            section2ListATextView10.text = savedText49c
        }
        if let savedText50c = UserDefaults.standard.string(forKey: "savedText50c") {
            section2ListATextView11.text = savedText50c
        }
        if let savedText51c = UserDefaults.standard.string(forKey: "savedText51c") {
            section2ListATextView12.text = savedText51c
        }
        if let savedText52c = UserDefaults.standard.string(forKey: "savedText52c") {
            section2ListBTextField1.text = savedText52c
        }
        if let savedText53c = UserDefaults.standard.string(forKey: "savedText53c") {
            section2ListBTextField2.text = savedText53c
        }
        if let savedText54c = UserDefaults.standard.string(forKey: "savedText54c") {
            section2ListBTextField3.text = savedText54c
        }
        if let savedText55c = UserDefaults.standard.string(forKey: "savedText55c") {
            section2ListBTextField4.text = savedText55c
        }
        if let savedText56c = UserDefaults.standard.string(forKey: "savedText56c") {
            section2ListCTextField1.text = savedText56c
        }
        if let savedText57c = UserDefaults.standard.string(forKey: "savedText57c") {
            section2ListCTextField2.text = savedText57c
        }
        if let savedText58c = UserDefaults.standard.string(forKey: "savedText58c") {
            section2ListCTextField3.text = savedText58c
        }
        if let savedText59c = UserDefaults.standard.string(forKey: "savedText59c") {
            section2ListCTextField4.text = savedText59c
        }
        if let savedText60c = UserDefaults.standard.string(forKey: "savedText60c") {
            certificationTextField.text = savedText60c
        }
        if let savedText61c = UserDefaults.standard.string(forKey: "savedText61c") {
            section2TodaysDateTextView.text = savedText61c
        }
        if let savedText62c = UserDefaults.standard.string(forKey: "savedText62c") {
            section2TitleOfEmployerTextView.text = savedText62c
        }
        if let savedText63c = UserDefaults.standard.string(forKey: "savedText63c") {
            section2LastNameOfEmployerOrAuthorizedTextView.text = savedText63c
        }
        if let savedText64c = UserDefaults.standard.string(forKey: "savedText64c") {
            section2FirstNameOfEmployerOrAuthorizedTextView.text = savedText64c
        }
        if let savedText65c = UserDefaults.standard.string(forKey: "savedText65c") {
            section2EmployersBusinessTextView.text = savedText65c
        }
        if let savedText66c = UserDefaults.standard.string(forKey: "savedText66c") {
            section2EmployersBusinessOrOrganizationAddressTextVIew.text = savedText66c
        }
        if let savedText67c = UserDefaults.standard.string(forKey: "savedText67c") {
            section2CityOrTowTextView.text = savedText67c
        }
        if let savedText68c = UserDefaults.standard.string(forKey: "savedText68c") {
            section2TextField.text = savedText68c
        }
        if let savedText69c = UserDefaults.standard.string(forKey: "savedText69c") {
            section2ZIPCodeTextField.text = savedText69c
        }
        if let savedText70c = UserDefaults.standard.string(forKey: "savedText70c") {
            section3LastNameTextView.text = savedText70c
        }
        if let savedText71c = UserDefaults.standard.string(forKey: "savedText71c") {
            section3FirstNameTextView.text = savedText71c
        }
        if let savedText72c = UserDefaults.standard.string(forKey: "savedText72c") {
            section3MiddleInitialTextView.text = savedText72c
        }
        if let savedText73c = UserDefaults.standard.string(forKey: "savedText73c") {
            section3DateTextView.text = savedText73c
        }
        if let savedText74c = UserDefaults.standard.string(forKey: "savedText74c") {
            section3DocumentTextView.text = savedText74c
        }
        if let savedText75c = UserDefaults.standard.string(forKey: "savedText75c") {
            section3DocumentNumberTextView.text = savedText75c
        }
        if let savedText76c = UserDefaults.standard.string(forKey: "savedText76c") {
            section3ExpirationDateTextView.text = savedText76c
        }
        if let savedText77c = UserDefaults.standard.string(forKey: "savedText77c") {
            section3TodaysDateTextView.text = savedText77c
        }
        if let savedText78c = UserDefaults.standard.string(forKey: "savedText78c") {
            section3TitleOfEmployerTextView.text = savedText78c
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        section1LastNameTextView.text = "\(appDelegate.employeeLastName)"
        section1FirstNameTextView.text = "\(appDelegate.employeeFirstName)"
        section1AddressTextView.text = "\(appDelegate.mailingAddress)"
        section1DOBTextView.text = "\(appDelegate.birthdate)"
        section1EmployeesEmailAddressTextView.text = "\(appDelegate.email)"
        section1EmployeesTelephoneNumberTextView.text = "\(appDelegate.callPhone)"
        setData()
        checkSelectedImages()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        appDelegate.dicFPDOHSSkillSeet.setValue(sigantureOfPrepareOrTranslatorButton.imageView?.image, forKey: "sigantureOfPrepareOrTranslator")
        appDelegate.dicFPDOHSSkillSeet.setValue(signatureOfEmployeeButton.imageView?.image, forKey: "signatureOfEmployee")
        appDelegate.dicFPDOHSSkillSeet.setValue(signatureOfEmployerOrAuthorizedRepresentativeButton.imageView?.image, forKey: "signatureOfEmployerOrAuthorizedRepresentative")
        appDelegate.dicFPDOHSSkillSeet.setValue(section3SignatureOfEmployerButton.imageView?.image, forKey: "section3SignatureOfEmployer")
        
        UserDefaults.standard.set(section1LastNameTextView.text, forKey: "savedText1c")
        UserDefaults.standard.set(section1FirstNameTextView.text, forKey: "savedText2c")
        UserDefaults.standard.set(section1MiddleInitialTextField.text, forKey: "savedText3c")
        UserDefaults.standard.set(section1OtherLastNameTextView.text, forKey: "savedText4c")
        UserDefaults.standard.set(section1AddressTextView.text, forKey: "savedText5c")
        UserDefaults.standard.set(section1AptNumberTextField.text, forKey: "savedText6c")
        UserDefaults.standard.set(section1CityOrTownTextView.text, forKey: "savedText7c")
        UserDefaults.standard.set(section1StateTextField.text, forKey: "savedText8c")
        UserDefaults.standard.set(section1ZipCodeTextView.text, forKey: "savedText9c")
        UserDefaults.standard.set(section1DOBTextView.text, forKey: "savedText10c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField1.text, forKey: "savedText11c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField2.text, forKey: "savedText12c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField3.text, forKey: "savedText13c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField4.text, forKey: "savedText14c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField5.text, forKey: "savedText15c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField6.text, forKey: "savedText16c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField7.text, forKey: "savedText17c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField8.text, forKey: "savedText18c")
        UserDefaults.standard.set(usSocialSecurityNumberTextField9.text, forKey: "savedText19c")
        UserDefaults.standard.set(section1EmployeesEmailAddressTextView.text, forKey: "savedText20c")
        UserDefaults.standard.set(section1EmployeesTelephoneNumberTextView.text, forKey: "savedText21c")
        UserDefaults.standard.set(aLawfulTextField.text, forKey: "savedText22c")
        UserDefaults.standard.set(anAlienTextField.text, forKey: "savedText23c")
        UserDefaults.standard.set(alienTextField.text, forKey: "savedText24c")
        UserDefaults.standard.set(formNumberTextField.text, forKey: "savedText25c")
        UserDefaults.standard.set(foreginTextField.text, forKey: "savedText26c")
        UserDefaults.standard.set(countryTextField.text, forKey: "savedText27c")
        UserDefaults.standard.set(todaysDateTextView.text, forKey: "savedText28c")
        UserDefaults.standard.set(preparerTodaysDateTextView.text, forKey: "savedText29c")
        UserDefaults.standard.set(preparerLastNameTextView.text, forKey: "savedText30c")
        UserDefaults.standard.set(preparerFirstNameTextView.text, forKey: "savedText31c")
        UserDefaults.standard.set(preparerAddressTextView.text, forKey: "savedText32c")
        UserDefaults.standard.set(preparerCityOrTowTextView.text, forKey: "savedText33c")
        UserDefaults.standard.set(preparerStateTexField.text, forKey: "savedText34c")
        UserDefaults.standard.set(preparerZIPCodeTextView.text, forKey: "savedText35c")
        UserDefaults.standard.set(section2LastNameTextView.text, forKey: "savedText36c")
        UserDefaults.standard.set(section2FirstNameTextView.text, forKey: "savedText37c")
        UserDefaults.standard.set(section2MITextField.text, forKey: "savedText38c")
        UserDefaults.standard.set(section2CitizenshipTextView.text, forKey: "savedText39c")
        UserDefaults.standard.set(section2ListATextView1.text, forKey: "savedText40c")
        UserDefaults.standard.set(section2ListATextView2.text, forKey: "savedText41c")
        UserDefaults.standard.set(section2ListATextView3.text, forKey: "savedText42c")
        UserDefaults.standard.set(section2ListATextView4.text, forKey: "savedText43c")
        UserDefaults.standard.set(section2ListATextView5.text, forKey: "savedText44c")
        UserDefaults.standard.set(section2ListATextView6.text, forKey: "savedText45c")
        UserDefaults.standard.set(section2ListATextView7.text, forKey: "savedText46c")
        UserDefaults.standard.set(section2ListATextView8.text, forKey: "savedText47c")
        UserDefaults.standard.set(section2ListATextView9.text, forKey: "savedText48c")
        UserDefaults.standard.set(section2ListATextView10.text, forKey: "savedText49c")
        UserDefaults.standard.set(section2ListATextView11.text, forKey: "savedText50c")
        UserDefaults.standard.set(section2ListATextView12.text, forKey: "savedText51c")
        UserDefaults.standard.set(section2ListBTextField1.text, forKey: "savedText52c")
        UserDefaults.standard.set(section2ListBTextField2.text, forKey: "savedText53c")
        UserDefaults.standard.set(section2ListBTextField3.text, forKey: "savedText54c")
        UserDefaults.standard.set(section2ListBTextField4.text, forKey: "savedText55c")
        UserDefaults.standard.set(section2ListCTextField1.text, forKey: "savedText56c")
        UserDefaults.standard.set(section2ListCTextField2.text, forKey: "savedText57c")
        UserDefaults.standard.set(section2ListCTextField3.text, forKey: "savedText58c")
        UserDefaults.standard.set(section2ListCTextField4.text, forKey: "savedText59c")
        UserDefaults.standard.set(certificationTextField.text, forKey: "savedText60c")
        UserDefaults.standard.set(section2TodaysDateTextView.text, forKey: "savedText61c")
        UserDefaults.standard.set(section2TitleOfEmployerTextView.text, forKey: "savedText62c")
        UserDefaults.standard.set(section2LastNameOfEmployerOrAuthorizedTextView.text, forKey: "savedText63c")
        UserDefaults.standard.set(section2FirstNameOfEmployerOrAuthorizedTextView.text, forKey: "savedText64c")
        UserDefaults.standard.set(section2EmployersBusinessTextView.text, forKey: "savedText65c")
        UserDefaults.standard.set(section2EmployersBusinessOrOrganizationAddressTextVIew.text, forKey: "savedText66c")
        UserDefaults.standard.set(section2CityOrTowTextView.text, forKey: "savedText67c")
        UserDefaults.standard.set(section2TextField.text, forKey: "savedText68c")
        UserDefaults.standard.set(section2ZIPCodeTextField.text, forKey: "savedText69c")
        UserDefaults.standard.set(section3LastNameTextView.text, forKey: "savedText70c")
        UserDefaults.standard.set(section3FirstNameTextView.text, forKey: "savedText71c")
        UserDefaults.standard.set(section3MiddleInitialTextView.text, forKey: "savedText72c")
        UserDefaults.standard.set(section3DateTextView.text, forKey: "savedText73c")
        UserDefaults.standard.set(section3DocumentTextView.text, forKey: "savedText74c")
        UserDefaults.standard.set(section3DocumentNumberTextView.text, forKey: "savedText75c")
        UserDefaults.standard.set(section3ExpirationDateTextView.text, forKey: "savedText76c")
        UserDefaults.standard.set(section3TodaysDateTextView.text, forKey: "savedText77c")
        UserDefaults.standard.set(section3TitleOfEmployerTextView.text, forKey: "savedText78c")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        sigantureOfPrepareOrTranslatorButton.setImage(appDelegate.imgSignExcavation5.image, for: .normal)
        signatureOfEmployeeButton.setImage(appDelegate.imgSignExcavation6.image, for: .normal)
        signatureOfEmployerOrAuthorizedRepresentativeButton.setImage(appDelegate.imgSignExcavation7.image, for: .normal)
        section3SignatureOfEmployerButton.setImage(appDelegate.imgSignExcavation8.image, for: .normal)
    }
    
    func setData(){
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "sigantureOfPrepareOrTranslator") != nil {
            self.sigantureOfPrepareOrTranslatorButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "sigantureOfPrepareOrTranslator") as? UIImage, for: .normal)
        }
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "signatureOfEmployee") != nil {
            self.signatureOfEmployeeButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "signatureOfEmployee") as? UIImage, for: .normal)
        }
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "signatureOfEmployerOrAuthorizedRepresentative") != nil {
            self.signatureOfEmployerOrAuthorizedRepresentativeButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "signatureOfEmployerOrAuthorizedRepresentative") as? UIImage, for: .normal)
        }
        if appDelegate.dicFPDOHSSkillSeet.value(forKey: "section3SignatureOfEmployer") != nil {
            self.section3SignatureOfEmployerButton.setImage(appDelegate.dicFPDOHSSkillSeet.value(forKey: "section3SignatureOfEmployer") as? UIImage, for: .normal)
        }
    }
    
    @IBAction func clickOnShareButton(_ sender: UIButton) {
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "I9", tim: true, controller: self)
    }
    
    @IBAction func clickOnSaveButton(_ sender: UIButton) {
        SaveDataToICloudAndShareSheet.shared.captureScreenshot(scrlView: scrollView, vie: self.view, txtStr: "I9")
        AlertHelper.shared.alertController(title: "Human Resource Solutions", message: "This form has been save successfully", okTitle: "OK", controller: self) { _ in self.navigationController?.popViewController(animated: false) }
    }

    @IBAction func clickOnBackButton(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    

    
    @IBAction func aCitizenTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: aCitizenImageView, sender: sender, vc: "EmploymentEligibilityVerificationVC", key: KeysPermitVC.img1b)
    }
    @IBAction func aNoncitizenTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: aNoncitizenImageView, sender: sender, vc: "EmploymentEligibilityVerificationVC", key: KeysPermitVC.img2b)
    }
    
    @IBAction func aLawfulTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: aLawfulImageView, sender: sender, vc: "EmploymentEligibilityVerificationVC", key: KeysPermitVC.img3b)
    }
    
    @IBAction func anAlienTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: anAlienImageView, sender: sender, vc: "EmploymentEligibilityVerificationVC", key: KeysPermitVC.img4b)
    }
    @IBAction func preparerTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: preparerImageView, sender: sender, vc: "EmploymentEligibilityVerificationVC", key: KeysPermitVC.img5b)
    }
    @IBAction func apreparerTapButton(_ sender: UIButton) {
        MyHelper.shared.selectedUnseleted(img: apreparerImageView, sender: sender, vc: "EmploymentEligibilityVerificationVC", key: KeysPermitVC.img6b)
    }
    
    @IBAction func sigantureOfPrepareOrTranslatorTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 5
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signatureOfEmployeeTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 6
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func signatureOfEmployerOrAuthorizedRepresentativeTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 7
        self.navigationController?.pushViewController(vc, animated: true)
    }
  
    @IBAction func section3SignatureOfEmployerTapButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignatureVC") as! SignatureVC
        vc.isWorkingOn = 8
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func checkSelectedImages() {
        
        let nR = [aCitizenImageView,
                  aNoncitizenImageView,
                  aLawfulImageView,
                  anAlienImageView,
                  preparerImageView,
                  apreparerImageView
        ]
        
        for key in 0..<KeysPermitVC.selectUnselectAllKeys3.count {
            switch appDelegate.dicWorkVC.value(forKey: KeysPermitVC.selectUnselectAllKeys3[key]) as? Int ?? -1 {
            case 0:
                switch key {
                case 0:
                    aCitizenButton.isSelected = false
                case 1:
                    aNoncitizenButton.isSelected = false
                case 2:
                    aLawfulButton.isSelected = false
                case 3:
                    anAlienButton.isSelected = false
                case 4:
                    preparerButton.isSelected = false
                case 5:
                    apreparerButton.isSelected = false
                default:
                    break
                }
                nR[key]?.image = UIImage(named: "ic_uncheck")
            case 1:
                switch key {
                case 0:
                    aCitizenButton.isSelected = true
                case 1:
                    aNoncitizenButton.isSelected = true
                case 2:
                    aLawfulButton.isSelected = true
                case 3:
                    anAlienButton.isSelected = true
                case 4:
                    preparerButton.isSelected = true
                case 5:
                    apreparerButton.isSelected = true
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
