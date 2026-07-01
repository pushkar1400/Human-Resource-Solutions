//
//  AlertHelper.swift
//  New Hires
//
//  Created by NextDay Sotware Solution on 16/05/24.
//

import Foundation
import UIKit

final class AlertHelper {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let shared = AlertHelper()
    //Alert
    func alertController(title: String, message: String, okTitle: String, controller: UIViewController, handler: @escaping ((UIAlertAction) -> Void)) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: okTitle, style: .default, handler: handler)
        alert.addAction(ok)
        controller.present(alert, animated: true)
    }
}
