//
//  TabContainerViewController.swift
//  Example
//
//  Created by Hans Seiffert on 06.08.16.
//  Copyright © 2016 Hans Seiffert. All rights reserved.
//

import UIKit
import ContainerController

class TabContainerViewController: UIViewController {

	@IBAction func didPressContentAButton(sender: AnyObject) {
		self.containerController?.displayContentController(segueIdentifier: "showContentA")
	}

	@IBAction func didPressContentBButton(sender: AnyObject) {
		self.containerController?.displayContentController(segueIdentifier: "showContentB")
	}

	@IBAction func didPressContentCButton(sender: AnyObject) {
		self.containerController?.displayContentController(segueIdentifier: "showContentC")
	}

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		self.cc_setupContainerControllerIfNeeded(segue, defaultSegueIdentifier: "showContentA")
    }
}
