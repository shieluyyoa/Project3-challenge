//
//  DetailViewController.swift
//  Proejct3-challenge
//
//  Created by Oscar Lui on 8/2/2022.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet var image: UIImageView!
    var selectedimage: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imagetoload = selectedimage {
            image.image = UIImage(named: imagetoload)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
