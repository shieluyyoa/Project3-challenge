//
//  ViewController.swift
//  Proejct3-challenge
//
//  Created by Oscar Lui on 7/2/2022.
//

import UIKit

class ViewController: UITableViewController {
    var pictures:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("@3x.png") {
            pictures.append(item)
            }
        }
       
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture",for:indexPath)
        cell.imageView?.image = UIImage(named: pictures[indexPath.row])
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedimage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
            
    }
}

