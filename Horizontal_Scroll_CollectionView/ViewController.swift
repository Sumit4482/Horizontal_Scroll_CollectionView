//
//  ViewController.swift
//  Horizontal_Scroll_CollectionView
//
//  Created by E5000855 on 06/06/24.
//

import UIKit


var mData = [
    MyModel(sectionType: "FirstSection", imageGallery: [
        "img2","img2","img2","img2","img2","img2"
    ]),
    MyModel(sectionType: "SecondSection", imageGallery: [
        "img2","img2","img2","img2","img2","img2"
    ]),
    MyModel(sectionType: "ThirdSection", imageGallery: [
        "img2","img2","img2","img2","img2","img2"
    ]),
    
    ]
class ViewController: UIViewController {

    @IBOutlet var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension  ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return mData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mData[section].sectionType
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.myCollectionView.tag = indexPath.section
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .brown
    }
    
    
}

