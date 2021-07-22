//
//  ViewControllerGallery.swift
//  TabandNav
//
//  Created by Helen Hall on 7/21/21.
//

import UIKit

class ViewControllerGallery: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArr = [ UIImage(named: "EL_1"), UIImage(named: "EL_2"), UIImage(named:"EL_3")]
    
    
    
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

//extension ViewControllerGallery: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return imgArr.count
//    }
//
//    func collectionView(_ _collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
//        if let vc = cell.contentView.viewWithTag(111) as? UIImageView {
//            vc.image = imgArr[indexPath.row]
//
//        } else {
//    }
//
//return cell
//    }
//
//}
//
//extension ViewControllerGallery : UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt: section,: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//    }
//    func collectionView(_collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let size = sliderCollectionView.frame.size
//        return CGSize(width:size.width, height: size.height)
//    }
//    func collectionView(_collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0.0
//
//    }
//
//    func collectionView(_collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0.0
//    }
//
//}
