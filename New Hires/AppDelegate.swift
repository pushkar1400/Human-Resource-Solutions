//
//  AppDelegate.swift
//  New Hires
//
//  Created by koshal singh shekhawat on 08/05/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    //Date
    var todayDate = ""
    
    //Employer, Department
    var employerName = ""
    var federalEINT = ""
    
    
    
    var employeeFirstName = ""
    var employeeLastName = ""
    var mailingAddress = ""
    var birthdate = ""
    var email = ""
    var callPhone = ""
    
    
    var weekly = ""
    var biweekly = ""
    
    var monday = ""
    var tuesday = ""
    var wednesday = ""
    var thursday = ""
    var firday = ""
    
    var ownerDirector = ""
    var humanResourceManagerEmail = ""
    var position = ""
    var imgSign = UIImageView()

    var dicWorkVC = NSMutableDictionary()
    
    var imgSignExcavation = UIImageView()
    var imgSignExcavation1 = UIImageView()
    var imgSignExcavation2 = UIImageView()
    var imgSignExcavation3 = UIImageView()
    var imgSignExcavation4 = UIImageView()
    var imgSignExcavation5 = UIImageView()
    var imgSignExcavation6 = UIImageView()
    var imgSignExcavation7 = UIImageView()
    var imgSignExcavation8 = UIImageView()
    var imgSignExcavation9 = UIImageView()
    var imgSignExcavation10 = UIImageView()
    
    
    var dicFPDOHSSkillSeet = NSMutableDictionary()
    
    
    var dicNewHireSafety = NSMutableDictionary()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        HomeScreen()
        
        if let appDomain = Bundle.main.bundleIdentifier {
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
        }
        return true
    }
    
    func HomeScreen() {
        todayDate =  Date().string(format: "yyyy-MM-dd")
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "EmployerInformationVC") as! EmployerInformationVC
        let navigation = UINavigationController.init(rootViewController: vc)
        navigation.navigationBar.isTranslucent = true
        self.window?.rootViewController = navigation
    }
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
extension Date {
    func string(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
