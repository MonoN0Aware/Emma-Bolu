//
//  TaskViewController.swift
//  WEEK8TODOFINAL
//
//  Created by Decagon on 19/05/2021.
//

import UIKit

class TaskViewController: UIViewController {
    var task: String?
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
       textView.text = task
    }
}
