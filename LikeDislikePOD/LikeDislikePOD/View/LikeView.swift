//
//  LikeView.swift
//  LikeDislikePOD
//
//  Created by Felipe Izepe on 25/04/18.
//  Copyright © 2018 Felipe Izepe. All rights reserved.
//

import Foundation
import UIKit

class LikeView: UIView, Likeable {
	
	@IBOutlet weak var imageView: UIImageView!
	
	@IBOutlet weak var likeButton: UIButton!
	
	@IBOutlet weak var dislikeButton: UIButton!
	
	var liked: Bool?
	
	var image: UIImage?
	
	
	/// Initializer for the dislikeview with the frame of the view and the image that will be liked
	///
	/// - Parameters:
	///   - frame: frame of the view
	///   - image: image that will be showned
	init(frame: CGRect, image: UIImage) {
		self.image = image
		super.init(frame: frame)
		self.setImage(image: image)
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	
	/// Sets the image to be showned
	///
	/// - Parameter image: UIImage to appear
	func setImage(image: UIImage) {
		imageView.image = image
	}
	
	func dislike() {
		liked = true
		self.likeButton.tintColor = UIColor.gray
		self.dislikeButton.tintColor = UIColor.red
	}
	
	func like() {
		liked = true
		self.likeButton.tintColor = UIColor.green
		self.dislikeButton.tintColor = UIColor.gray
	}
}
