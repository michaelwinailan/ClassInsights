//
//  QueueViewController.swift
//  ClassInsights
//
//  Created by Michael Nathaniel on 3/6/20.
//  Copyright © 2020 Binary Origin. All rights reserved.
//

import UIKit

class QueueViewController: UIViewController {

    @IBOutlet weak var sendingIndicatorStackview: UIStackView!
    @IBOutlet weak var remindedLabel: UILabel!

    @IBOutlet weak var responseRequiredStackView2: UIStackView!
    @IBOutlet weak var pendingAnswerStackView2: UIStackView!
    
    @IBOutlet weak var queueView0: UIView!
    @IBOutlet weak var queueView1: UIView!
    @IBOutlet weak var queueView2: UIView!
    @IBOutlet weak var queueView3: UIView!
    
    @IBOutlet weak var remindButton2: UIButton!
    @IBOutlet weak var answeredButton0: UIButton!
    @IBOutlet weak var answeredButton1: UIButton!
    @IBOutlet weak var answeredButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sendingIndicatorStackview.alpha = 1
        self.queueView0.alpha = 0
        self.queueView1.alpha = 0
        self.queueView2.alpha = 0
        self.queueView3.alpha = 0
        
        queueView0.layer.cornerRadius = 15
       queueView1.layer.cornerRadius = 15
       queueView2.layer.cornerRadius = 15
       queueView3.layer.cornerRadius = 15
       
       answeredButton0.layer.cornerRadius = 7
       answeredButton1.layer.cornerRadius = 7
       answeredButton2.layer.cornerRadius = 7
        
        UIView.animate(withDuration: 0.3, delay: 0.5, animations: {
            self.sendingIndicatorStackview.alpha = 0
        }, completion: { (true) in
            UIView.animate(withDuration: 0.2, animations: {
                self.queueView0.alpha = 1
                self.queueView1.alpha = 1
                self.queueView2.alpha = 1
                self.queueView3.alpha = 1
          
                self.remindedLabel.alpha = 0
                self.pendingAnswerStackView2.alpha = 0
              
                self.queueView0.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
                self.queueView1.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
                self.queueView2.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
                self.queueView3.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
                
                self.answeredButton0.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
                self.answeredButton1.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
                self.answeredButton2.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
                
                
            })
        })
        // Do any additional setup after loading the view.
    }
    
    @IBAction func remindButton2Tapped(_ sender: Any) {
        UIView.animate(withDuration: 0.2, animations: {
            self.remindButton2.alpha = 0
            self.answeredButton2.alpha = 0
            self.remindedLabel.alpha = 1
            
            self.pendingAnswerStackView2.alpha = 1
            self.responseRequiredStackView2.alpha = 0
            
            self.view.layoutIfNeeded()
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
