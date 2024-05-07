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

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
        printContent("hello")
    }
    @objc func hideKeyboard(){
        view.endEditing(true)
        print("clickKeyboard")
    }
}
