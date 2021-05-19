//
//  AddController.swift
//  WEEK8TODOFINAL
//
//  Created by Decagon on 19/05/2021.
//

import UIKit

class AddController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: When add button pressed, save what is in textview to the table
    @IBAction func addPressed(_ sender: UIButton) {
        if (textView.text != nil) && textView.text != "" {
            todoList?.append(textView.text!)
            textView.text = ""
        }
        navigationController?.popViewController(animated: true)
    }
}
