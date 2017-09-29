//
//  LoadingView.swift
//  PullDownRefresh
//
//  Created by Kalyan Vishnubhatla on 9/27/17.
//  Copyright © 2017 Kalyan Vishnubhatla. All rights reserved.
//

import UIKit

class LoadingView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var circle: CAShapeLayer!
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100))
        
        circle = CAShapeLayer()
        self.layer.addSublayer(circle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func didScroll(_ scrollView: UIScrollView) {
        let radius: CGFloat = 10
        let progress = (scrollView.contentOffset.y + 20) / (-1 * 35)
        print(scrollView.contentOffset.y)
        print(progress)
        if progress <= 2 {
            circle.path = UIBezierPath(arcCenter: CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2),
                                       radius: radius,
                                       startAngle: CGFloat(2*Double.pi),
                                       endAngle: CGFloat(Double.pi) * progress,
                                       clockwise: true).cgPath
            circle.position = CGPoint(x: UIScreen.main.bounds.width / 2 - 50, y: 100 / 2)
            circle.fillColor = UIColor.clear.cgColor
            circle.strokeColor = UIColor.blue.cgColor
            circle.lineWidth = 5
        }
    }
}
