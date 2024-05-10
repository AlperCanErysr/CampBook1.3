//
//  DetailsVC.swift
//  CampBook1.3
//
//  Created by Alper Can Eryaşar on 3.05.2024.
//

import UIKit

class DetailsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        //Recognizers
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
        
        //Can the user click on the image?
        imageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(imageTapRecognizer)
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
        printContent("hello")
    }
    @objc func hideKeyboard(){
        view.endEditing(true)
        print("clickKeyboard")
    }
    @objc func selectImage(){
        let picker = UIImagePickerController() // go to user's media library
        picker.delegate = self
        picker.sourceType = .photoLibrary // Where will it open?
        picker.allowsEditing = true // Is it possible to edit photos?
        present(picker, animated: true, completion: nil) //alert vs. vs.
        
        print("selectimage")
    }
    // What happens after the photo is selected?
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageView.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
}
