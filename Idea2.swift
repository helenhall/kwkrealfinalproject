//
//  Idea2.swift
//  TabandNav
//
//  Created by Rachel F on 7/22/21.
//

import UIKit
import CoreData

class Idea2: UIViewController {
    @IBOutlet weak var ImageDisplay: UIImageView!
    var imageName : [ProjectCDCD] = []
    func getToDos() {
         if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

         if let dataFromCoreData = try? accessToCoreData.fetch(ProjectCDCD.fetchRequest()) as? [ProjectCDCD] {
              imageName = dataFromCoreData
            if let helppp = imageName.imageNewIdea {
                ImageDisplay.image = UIImage(named: helppp)
            }
             }
         }
    

    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
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
