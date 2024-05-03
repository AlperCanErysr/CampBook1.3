//
//  DetailsVC.swift
//  CampBook1.3
//
//  Created by Alper Can Eryaşar on 3.05.2024.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
        printContent("hello")
    }
    
}
