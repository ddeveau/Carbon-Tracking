//
//  ProfileCollectionView.swift
//  DatabasesProject
//
//  Created by Tahia Emran on 11/9/17.
//  Copyright © 2017 Tahia Emran. All rights reserved.
//

import UIKit
import Foundation

class ProfileCollectionView: UIView {

    var inputLabelView: UIStackView! // put label on button
    var calendarLabel: UIStackView!
    var statsLabel: UIStackView!
    var mapLabel: UIStackView!
    
    let textBlue = UIColor(red: 7.0/255.0, green: 188.0/255.0, blue: 250.0/255.0, alpha: 1.0)
    
    convenience init(){
        self.init(frame: CGRect.zero)
        initLabels()
    }
    
    fileprivate func initLabels(){
        self.inputLabelView = makeLabel(imageName: "plus.png", data: "Input Data")
        self.addSubview(self.inputLabelView)
        self.inputLabelView.pinTop(v: self, o: 60)
        self.inputLabelView.pinLeftRight(v: self)
        self.inputLabelView.width(w: 200)
        self.inputLabelView.height(h: 50)
        
        self.calendarLabel = makeLabel(imageName: "calendar.png", data: "My Calendar")
        self.addSubview(self.calendarLabel)
        self.calendarLabel.pinTop2Bottom(v: self.inputLabelView)
        self.calendarLabel.pinLeftRight(v: self)
        self.calendarLabel.width(w: 200)
        self.calendarLabel.height(h: 50)
        
        self.statsLabel = makeLabel(imageName: "bar-chart.png", data: "My Statistics")
        self.addSubview(self.statsLabel)
        self.statsLabel.pinTop2Bottom(v: self.calendarLabel)
        self.statsLabel.pinLeftRight(v: self)
        self.statsLabel.width(w: 200)
        self.statsLabel.height(h: 50)
        
        self.mapLabel = makeLabel(imageName: "world.png", data: "Map View")
        self.addSubview(self.mapLabel)
        self.mapLabel.pinTop2Bottom(v: self.statsLabel)
        self.mapLabel.pinLeftRight(v: self)
        self.mapLabel.width(w: 200)
        self.mapLabel.height(h: 50)
    }
    
    
    fileprivate func makeLabel(imageName: String, data: String) -> UIStackView{
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        
        let inputImage = UIImage(named: imageName)
        let inputImageView = UIImageView(image: inputImage)
        
        stackView.addSubview(inputImageView)
        inputImageView.pinLeft(v: stackView)
        inputImageView.pinY(v: stackView)
        inputImageView.height(h: 25)
        inputImageView.width(w: 25)
        
        let inputTextLabel = UILabel()
        inputTextLabel.text = data
        inputTextLabel.textColor = textBlue
        
        stackView.addSubview(inputTextLabel)
        
        inputTextLabel.pinLeft2Right(v: inputImageView, o:10)
        inputTextLabel.pinRight(v: stackView)
        inputTextLabel.pinTopBottom(v: stackView)
//        self.inputLabelView.pinTop(v: self, o: 60)
//        self.inputLabelView.pinLeftRight(v: self)
//        self.inputLabelView.width(w: 120)
//        self.inputLabelView.height(h: 50)
//
        return stackView
    }
    

}
