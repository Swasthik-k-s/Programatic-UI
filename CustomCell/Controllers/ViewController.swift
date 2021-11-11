//
//  ViewController.swift
//  CustomCell
//
//  Created by Swasthik K S on 09/11/21.
//

import UIKit

class ViewController: UIViewController {

    let cellIdentifier = "itemCell"
    
    var itemArray: [Item] = []
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationBar()
        configureCollectionView()
        // Do any additional setup after loading the view.
    }
    
    func configureNavigationBar() {
            
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            appearance.backgroundColor = .red
            
            navigationController?.navigationBar.standardAppearance = appearance
            navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        
        view.addSubview(collectionView)
//        collectionView.backgroundColor = .blue
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(ConversionCell.self, forCellWithReuseIdentifier: cellIdentifier)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ConversionCell
        
        cell.backgroundColor = .darkGray
        
        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "dd/MM/YY hh:mm:a"
        dateFormatter.dateFormat = "hh:mm:a"
        
        cell.nameLabel.text = "Name"
        cell.messageLabel.text = "Message rvf grgg g vg grg vt rgrgt"
        cell.profileImage.image = UIImage(systemName: "person.fill")
        cell.dateLabel.text = dateFormatter.string(from: Date())
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
