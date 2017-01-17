//
//  PolygonView.swift
//  PolygonViewDemo
//
//  Created by Robert Ryan on 1/16/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

import UIKit

@IBDesignable open class PolygonView: UIView {
    
    @IBInspectable open var fillColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) { didSet { updatePath() } }
    
    open var polygon = [
        CGPoint(x: 0, y: 0),
        CGPoint(x: 1, y: 0),
        CGPoint(x: 1, y: 0.65),
        CGPoint(x: 0, y: 1)
    ] { didSet { updatePath() } }
    
    private lazy var shapeLayer: CAShapeLayer = {
        let _shapeLayer = CAShapeLayer()
        _shapeLayer.strokeColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0).cgColor
        self.layer.insertSublayer(_shapeLayer, at: 0)
        return _shapeLayer
    }()
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        updatePath()
    }
    
    private func updatePath() {
        guard polygon.count > 2 else { return }
        
        let path = UIBezierPath()
        path.move(to: convert(polygon[0]))
        for point in polygon.dropFirst() {
            path.addLine(to: convert(point))
        }
        
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = fillColor.cgColor
    }
    
    private func convert(_ point: CGPoint) -> CGPoint {
        return CGPoint(x: bounds.origin.x + point.x * bounds.size.width,
                       y: bounds.origin.y + point.y * bounds.size.height)
    }
}
