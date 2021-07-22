//
//  NewIdea.swift
//  TabandNav
//
//  Created by Rachel F on 7/22/21.
//

import UIKit
import CoreData

class NewIdea: UIViewController {

    @IBOutlet weak var ImageDisplayy: UIImageView!
    @IBOutlet weak var TitleBox: UITextField!
    var imageName : [ProjectCDCD] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageDisplayy.image = UIImage(named: "xyzz")
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func cheatcode2(_ sender: UIButton) {
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else {
             return
             }

        //this line stores the information from Core Data into the object (dataFromCoreData) that we can access.
             let dataFromCoreData = accessToCoreData.persistentContainer.viewContext

        //this line creates an empty object that is the same data type as the ToDoCD entry within Core Data.  This means this object will have all the properties of ToDoCD.
             let newToDo = ProjectCDCD(context: dataFromCoreData)
        newToDo.imageNewIdea = TitleBox.text
        //these lines give the object information from the user input
        if TitleBox.text == "cookies"{
            newToDo.numIdea = 1
        }

        //This is like clicking "save"! Our new object is now safe in Core Data!
        accessToCoreData.saveContext()
        
        if TitleBox.hasText == true {
            if TitleBox.text == "cookies"{
                ImageDisplayy.image = UIImage(named: "cookies")
            } else if TitleBox.text == "fruit"{
                ImageDisplayy.image = UIImage(named: "fruit")
        }
    }
    }
    @IBAction func Createee(_ sender: UIButton) {
        ImageDisplayy.image = UIImage(named: "xyzz")
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
