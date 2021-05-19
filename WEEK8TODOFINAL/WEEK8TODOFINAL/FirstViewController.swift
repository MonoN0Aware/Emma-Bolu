//
//  FirstViewController.swift
//  WEEK8TODOFINAL
//
//  Created by Decagon on 18/05/2021.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: Setup TableView
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if let todo = todoList {
        return todo.count
    } else {
        return 0
    }
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
    if let todo = todoList {
        cell.textLabel?.text =  todo[indexPath.row]
    }
    return cell
}
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,
               forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
        todoList?.remove(at: indexPath.row)
        tableView.reloadData()
    }
}
    // MARK: When row is selected, open taskview page
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    guard let viewc =
storyboard?.instantiateViewController( withIdentifier: "task") as? TaskViewController else { return }
            viewc.title = "Edit Task"
            viewc.task = todoList?[indexPath.row]
            viewc.solveProblem = indexPath.row
            navigationController?.pushViewController(viewc, animated: true)
        }
}
