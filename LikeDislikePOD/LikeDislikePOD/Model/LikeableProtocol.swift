//
//  LikeableProtocol.swift
//  LikeDislikePOD
//
//  Created by Felipe Izepe on 25/04/18.
//  Copyright © 2018 Felipe Izepe. All rights reserved.
//

import Foundation
import UIKit


/// Protocol that describre a showable structure
protocol Showable {
	var image:UIImage?{get set}
	
	/// Sets the image the will be showned
	///
	/// - Parameter image: image to show
	func setImage(image: UIImage)
}

/// Defines the likeable protocol
protocol Likeable: Showable {
	var liked:Bool?{get set}
	
	func like()
	func dislike()
}

// MARK: Likeable extension to default implementations
extension Likeable {
	mutating func like() {
		liked = true
	}
	
	mutating func dislike(){
		liked = false
	}
}

