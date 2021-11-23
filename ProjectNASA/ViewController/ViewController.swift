//
//  ViewController.swift
//  ProjectNASA
//
//  Created by Adonis Rumbwere on 18/11/2021.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    private var viewModels = [ImagesDataTableViewCellViewModel]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
//        APICaller.shared.getNASAImageData { result in
//            switch result {
//                case .success(let imagesdata):
//
//
//
//                case .failure(let error):
//                    print(error)
//            }
//
//        }
        
        
        
        APICaller.shared.getNASAImageData { result in
            print("++\(result)")

        }
       
    }
    
   
    
    
    
    
       
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: ImagesDataTableViewCell.identifer,
            for: indexPath
            ) as? ImagesDataTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: viewModels[indexPath.row])
        return cell
        
    }
    
    


}

