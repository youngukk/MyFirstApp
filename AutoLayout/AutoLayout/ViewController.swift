//
//  ViewController.swift
//  AutoLayout
//
//  Created by admin on 2021/11/19.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var colorView: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


	
	@IBAction func tapChangeColorButton(_ sender: UIButton) {
		self.colorView.backgroundColor = UIColor.blue
		print("click chage Background Color")
	}
	
	@IBAction func testClick(_ sender: UIButton) {
	}
	
	
}

