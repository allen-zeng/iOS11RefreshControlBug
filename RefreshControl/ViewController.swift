//
//  ViewController.swift
//  RefreshControl
//
//  Created by Allen on 16/10/17.
//

import UIKit

class ViewController: UITableViewController {
    private var searchController: UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()

        let spinner = UIRefreshControl()
        spinner.addTarget(self, action: #selector(refresh), for: .valueChanged)
        refreshControl = spinner

        searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = "\(indexPath.row + 1)"
        return cell
    }

    @objc
    private func refresh() {
    }

}

