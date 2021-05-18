//
//  TaskViewController.swift
//  WEEK8TODOFINAL
//
//  Created by Decagon on 19/05/2021.
//

import UIKit

class TaskViewController: UIViewController, UITextViewDelegate {
    var task: String?
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
       textView.text = task
        textView.delegate = self
    }
   
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("sdfgh")
    }
    func textViewDidEndEditing(_ textView: UITextView) {
      print("78910")
        textView.text = task
    }
}
