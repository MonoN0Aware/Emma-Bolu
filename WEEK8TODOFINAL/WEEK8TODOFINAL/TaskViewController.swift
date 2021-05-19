//
//  TaskViewController.swift
//  WEEK8TODOFINAL
//
//  Created by Decagon on 19/05/2021.
//

import UIKit

class TaskViewController: UIViewController, UITextViewDelegate {

    var solveProblem: Int!
    var task: String?
    var todo = FirstViewController()

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
       textView.text = task
        textView.delegate = self
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        todoList?.remove(at: solveProblem!)
        print(solveProblem!)
    }
    func textViewDidEndEditing(_ textView: UITextView) {
           todoList?.insert(textView.text, at: solveProblem!)
           saveData(todoList: todoList!)
       }

}
