//
//  ListingsViewController.swift
//  Lively
//
//  Created by Dineshkumar kothuri on 28/04/20.
//  Copyright © 2020 Dineshkumar kothuri. All rights reserved.
//

import UIKit

class CitiesCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    @IBOutlet weak var listCollectnView: UICollectionView!
     var allImage: [String]! = Array.init(repeating: "ikkk.jpg", count: 20)
     var mainView = MainViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        //mainView.selectionSegment.hidd
       // mainView.selectionSegment.isHidden = true
       // mainView.listingsContainer.isHidden = true
       
               
        let screenWidth = UIScreen.main.bounds.width
           let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
           layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 10, right: 0)
           layout.itemSize = CGSize(width: screenWidth/2 - 5 , height: screenWidth/2 + 5)
           layout.minimumInteritemSpacing = 0
           layout.minimumLineSpacing = 5
           listCollectnView.collectionViewLayout = layout
           listCollectnView.delegate = self
           listCollectnView.dataSource = self

        
    }
    
    //1
      let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
          

          // MARK: - UICollectionViewDataSource protocol
         func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
             return 1
         }

          // tell the collection view how many cells to make
          func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return allImage.count
          }

          
    
    
          func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//              let cellHeight = (collectionView.bounds.size.height - 30) / 3 // 3 count of rows to show
              let cellWidth = (collectionView.bounds.size.width - 20) / 2 // 2 count of colomn to show
              return CGSize(width: cellWidth, height: 200)
          }

        

//          func collectionView(_ collectionView: UICollectionView,
//                              layout collectionViewLayout: UICollectionViewLayout,
//                              minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//              return 2.0
//          }
//
//          func collectionView(_ collectionView: UICollectionView, layout
//              collectionViewLayout: UICollectionViewLayout,
//                              minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//              return 5.0
//          }
          // make a cell for each cell index path
          func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

              // get a reference to our storyboard cell
              let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! ListCollectionViewCell

            
            let image = UIImage(named: allImage[indexPath.row])
            cell.imgView.image = image
            cell.backgroundColor = .red;
            //cell.contentView.addSubview(imVie)
              //cell.myLabel.text = self.items[indexPath.item]
              //cell.backgroundColor = UIColor.cyan
              return cell
          }
    
    

          // MARK: - UICollectionViewDelegate protocol

          func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
              // handle tap events
            
            
              let detailVc = self.storyboard?.instantiateViewController(identifier: "detailVc") as! DetailViewController
              detailVc.modalPresentationStyle = .fullScreen
              
              self.present(detailVc, animated: true, completion: nil)
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
