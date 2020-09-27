//
//  ViewController.swift
//  EduInsights
//
//  Created by Michael Nathaniel on 3/6/20.
//  Copyright © 2020 Binary Origin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var liveLabel: UILabel!
    @IBOutlet weak var classStackView: UIStackView!
    @IBOutlet weak var rateBackgroundViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var colorBarView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var questionBackgroundView: UIView!
    @IBOutlet weak var rateBackgroundView: UIView!
    
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var understandingSlider: UISlider!
    @IBOutlet weak var understandingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.askButton.backgroundColor = UIColor.lightGray
        
        self.questionTextView.delegate = self
        setupUI()
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        UIView.animate(withDuration: 0.3, animations: {
            self.rateBackgroundViewTopConstraint.constant = 20
            self.view.layoutIfNeeded()
        })
        self.questionTextView.resignFirstResponder()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        UIView.animate(withDuration: 0.3, animations: {
            self.rateBackgroundViewTopConstraint.constant = -110
            self.view.layoutIfNeeded()
        })
    }
    
    func textViewDidChange(_ textView: UITextView) {
        if textView.text.count == 0 {
            self.askButton.backgroundColor = UIColor.lightGray
        } else {
            self.askButton.backgroundColor = UIColor(red: 0, green: 0.478, blue: 1, alpha: 1)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        UIView.animate(withDuration: 0.3, animations: {
            self.rateBackgroundViewTopConstraint.constant = 20
            self.view.layoutIfNeeded()
        })
        self.questionTextView.resignFirstResponder()
    }
    
    func setupUI() {
        
        liveLabel.layer.cornerRadius = 5
        
        colorBarView.layer.cornerRadius = 5
        profileImageView.layer.cornerRadius = 30
        rateBackgroundView.layer.cornerRadius = 15
        questionBackgroundView.layer.cornerRadius = 15
        askButton.layer.cornerRadius = 10
        
        questionTextView.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0).cgColor
        questionTextView.layer.borderWidth = 1.0
        questionTextView.layer.cornerRadius = 5
        
        self.understandingLabel.textColor = UIColor(red: 0.2, green: 0.6, blue: 0, alpha: 1)
        self.understandingSlider.tintColor = UIColor(red: 0.2, green: 0.6, blue: 0, alpha: 1)
        
        questionBackgroundView.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
        rateBackgroundView.dropShadow(color: UIColor.lightGray, opacity: 0.8, offSet: CGSize(width: 0.5, height: 0.5), radius: 8, scale: true)
        askButton.dropShadow(color: UIColor.lightGray, opacity: 0.9, offSet: CGSize(width: 0.8, height: 0.8), radius: 8, scale: true)
        
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        if sender.value >= 0.9 {
            self.understandingLabel.text = "10 - Easy Peasy! B)"
            self.understandingLabel.textColor = UIColor(red: 0, green: 0.7, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0, green: 0.7, blue: 0, alpha: 1)
        } else if sender.value >= 0.8 {
            self.understandingLabel.text = "9 - Easy! :D"
            self.understandingLabel.textColor = UIColor(red: 0.1, green: 0.6, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0.1, green: 0.6, blue: 0, alpha: 1)
        } else if sender.value >= 0.7 {
            self.understandingLabel.text = "8 - Very Understandable! :)"
            self.understandingLabel.textColor = UIColor(red: 0.2, green: 0.6, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0.2, green: 0.6, blue: 0, alpha: 1)
        } else if sender.value >= 0.6 {
            self.understandingLabel.text = "7 - Kinda Understandable? :)"
            self.understandingLabel.textColor = UIColor(red: 0.3, green: 0.6, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0.3, green: 0.6, blue: 0, alpha: 1)
        } else if sender.value >= 0.5 {
            self.understandingLabel.text = "6 - Moderately do-able. :/"
            self.understandingLabel.textColor = UIColor(red: 0.7, green: 0.7, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0.7, green: 0.7, blue: 0, alpha: 1)
        } else if sender.value >= 0.4 {
            self.understandingLabel.text = "5 - Difficult but do-able. :/"
            self.understandingLabel.textColor = UIColor(red: 0.7, green: 0.7, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0.7, green: 0.7, blue: 0, alpha: 1)
        } else if sender.value >= 0.3 {
            self.understandingLabel.text = "4 - I don't understand :("
            self.understandingLabel.textColor = UIColor(red: 0.7, green: 0, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0.7, green: 0, blue: 0, alpha: 1)
        } else if sender.value >= 0.2 {
            self.understandingLabel.text = "3 - Unable to keep up :("
            self.understandingLabel.textColor = UIColor(red: 0.8, green: 0, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0.8, green: 0, blue: 0, alpha: 1)
        } else if sender.value >= 0.1 {
            self.understandingLabel.text = "2 - I'm completely lost :'("
            self.understandingLabel.textColor = UIColor(red: 0.9, green: 0, blue: 0, alpha: 1)
            self.understandingSlider.tintColor = UIColor(red: 0.9, green: 0, blue: 0, alpha: 1)
        } else if sender.value >= 0 {
            self.understandingLabel.text = "1 - What are you talking about? :'("
            self.understandingLabel.textColor = .red
        }
    
    }
    
    @IBAction func askButtonTapped(_ sender: Any) {
    
    
    }
}

extension UIView {

  // OUTPUT 1
  func dropShadow(scale: Bool = true) {
    layer.masksToBounds = false
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 0.5
    layer.shadowOffset = CGSize(width: -1, height: 1)
    layer.shadowRadius = 1

    layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    layer.shouldRasterize = true
    layer.rasterizationScale = scale ? UIScreen.main.scale : 1
  }

  // OUTPUT 2
  func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
    layer.masksToBounds = false
    layer.shadowColor = color.cgColor
    layer.shadowOpacity = opacity
    layer.shadowOffset = offSet
    layer.shadowRadius = radius

    layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
    layer.shouldRasterize = true
    layer.rasterizationScale = scale ? UIScreen.main.scale : 1
  }

    func addParallaxToView(amount: Int) {

        let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        horizontal.minimumRelativeValue = -amount
        horizontal.maximumRelativeValue = amount

        let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        vertical.minimumRelativeValue = -amount
        vertical.maximumRelativeValue = amount

        let group = UIMotionEffectGroup()
        group.motionEffects = [horizontal, vertical]
        self.addMotionEffect(group)
    }
}


