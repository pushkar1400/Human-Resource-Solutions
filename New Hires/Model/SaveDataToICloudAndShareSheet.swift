//
//  SaveDataToICloudAndShareSheet.swift
//  New Hires
//
//  Created by NextDay Sotware Solution on 16/05/24.
//

import Foundation
import UIKit


final class SaveDataToICloudAndShareSheet {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let shared = SaveDataToICloudAndShareSheet()
    
    func captureScreenshot(scrlView: UIScrollView, vie: UIView, txtStr: String, tim: Bool? = false, controller: UIViewController? = nil)
    {
        //Creating PDF of scrollView
        let image = creatingPDFFromScrollView(scrlView: scrlView)
        
        //Creating Folder Path
        let (folderURL, str) = createFolderPath(txtStr: txtStr)
        
        let docURL = folderURL.appendingPathComponent("\(str).pdf")
        //Creating PDF
        createPDF(image: image)?.write(to: docURL, atomically: true)
        
        //Save To Icloud
        if tim == true {
            print("Share Manager is tapped out.")
        }else {
            Helper.storedToiCloud(docURL)
        }
        let imageToShare = [docURL]
        //Opening sheet of activity controller
        if tim == true {
            popShareSheet(imageArr: imageToShare, view: vie, controller: controller)
        }
    }
    
    //Create Image as a PDF
    func creatingPDFFromScrollView(scrlView: UIScrollView) -> UIImage {
        let savedContentOffset = scrlView.contentOffset
        
        // Calculate the total content size
        let totalContentSize = CGSize(width: scrlView.contentSize.width, height: scrlView.contentSize.height)
        
        // Initialize an image context with the total content size
        UIGraphicsBeginImageContextWithOptions(totalContentSize, false, UIScreen.main.scale)
        
        // Iterate through the visible content and capture screenshots
        var offset = CGPoint.zero
        while offset.y < totalContentSize.height {
            scrlView.contentOffset = offset
            
            // Capture the screenshot for the visible area
            let visibleRect = CGRect(x: 0, y: offset.y, width: scrlView.bounds.width, height: scrlView.bounds.height)
            scrlView.drawHierarchy(in: visibleRect, afterScreenUpdates: true)
            
            // Move to the next section
            offset.y += scrlView.bounds.height
        }
        
        // Combine the screenshots into a single image
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        
        // Restore the original content offset
        scrlView.contentOffset = savedContentOffset
        
        // End the image context
        UIGraphicsEndImageContext()
        
        return image
    }
    
    //Create Folder Name and File Name
    func createFolderPath(txtStr: String) -> (URL, String) {
        UserDefaults.incrementIntegerForKey(key: txtStr)
        let int = UserDefaults.standard.integer(forKey: txtStr)
        let filename = "\(appDelegate.todayDate)-\(appDelegate.employeeLastName)-\(txtStr)-\(int)"
        let documentDirectoryPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let folderName = "\(appDelegate.todayDate) \(appDelegate.employeeLastName)"
        // create the custom folder path
        let FolderDirectoryPath = (documentDirectoryPath.path as NSString).appending("/\(folderName)")
        let fileManager = FileManager.default
        if !fileManager.fileExists(atPath: FolderDirectoryPath) {
            do {
                try fileManager.createDirectory(atPath: FolderDirectoryPath,
                                                withIntermediateDirectories: false,
                                                attributes: nil)
            } catch {
                print("Error creating images folder in documents dir: \(error)")
            }
        }
        return (NSURL.fileURL(withPath: FolderDirectoryPath), filename)
    }
    
    
    //Share Sheet
    func popShareSheet(imageArr: [URL], view: UIView, controller: UIViewController?) {
        let activityViewController = UIActivityViewController(activityItems: imageArr, applicationActivities: nil)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
        activityViewController.popoverPresentationController?.sourceView = view
        activityViewController.popoverPresentationController?.sourceRect = CGRect(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2, width: 0, height: 0)
        controller?.present(activityViewController, animated: true)
    }
    
    //Create PDF
    func createPDF(image: UIImage) -> NSData? {
        let pdfData = NSMutableData()
        let pdfConsumer = CGDataConsumer(data: pdfData as CFMutableData)!
        var mediaBox = CGRect.init(x: 0, y: 0, width: image.size.width, height: image.size.height)
        let pdfContext = CGContext(consumer: pdfConsumer, mediaBox: &mediaBox, nil)!
        pdfContext.beginPage(mediaBox: &mediaBox)
        pdfContext.draw(image.cgImage!, in: mediaBox)
        pdfContext.endPage()
        return pdfData
    }
}
