//
//  DetailViewController.swift
//  new holiday app
//
//  Created by Jason Hendy on 10/29/19.
//  Copyright © 2019 Jason Hendy. All rights reserved.
//

import UIKit

import SwiftUI
import MessageUI


class DetailViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    
   
    
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    
    var image = UIImage()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    @IBAction func messageMeButton(_sender: UIButton) {
        
            let composeVC = MFMessageComposeViewController()
            
            composeVC.recipients = ["recipients_number_here"]
            composeVC.body = "hello"
            composeVC.messageComposeDelegate = self
            self.present(composeVC, animated: true, completion: nil)
        print("hello world")
        }
        
        func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
       
            switch (result) {
            case .cancelled:
                print("message was cancelled")
                dismiss(animated: true, completion: nil)
            case .failed:
            print("message failed")
            dismiss(animated: true, completion: nil)
            case .sent:
            print("message was sent")
            dismiss(animated: true, completion: nil)
            default:
                break
            }
    }
    

}

