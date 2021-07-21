//
//  UploadScreen.swift
//  TabandNav
//
//  Created by Rachel F on 7/20/21.
//

import UIKit
import CoreData

class UploadScreen: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ImageView: UIImageView!
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate=self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CameraClicked(_ sender: UIButton) {
        imagePicker.sourceType = .camera
                        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func UploadClicked(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
                        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                ImageView.image = selectedImage
            }
            imagePicker.dismiss(animated: true, completion: nil)
                
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
