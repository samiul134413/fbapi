//
//  BasicVC.swift
//  GithubDemo
//
//  Created by Samiul Haque on 27/8/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit
import Alamofire
class BasicVC: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    @IBOutlet weak var viewTable: UITableView!
    
    var repos = [Repository]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewTable.dataSource = self
        viewTable.delegate = self
        getRepository()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            print(self.repos.count)
           
            self.viewTable.reloadData()
            
            
        }
        
        
        // Do any additional setup after loading the view.
    }
    func getRepository()
    {
        
        Alamofire.request(repoURL).responseData(completionHandler:{
                response in
                
                
                switch response.result {
                case .success(let data):
                    
                    
                    do {
                        
                        self.repos = try JSONDecoder().decode([Repository].self, from: data)
                       
                        
                        
                        //print("repos: \(repos)")
                    } catch let error {
                        print("Error in Decoding: \(error.localizedDescription)")
                    }
                    //print(self.repos[4].repoName!)
                    //print(self.repos.count)
                    print("SUCCESS!")
                    
                    
                    
                    
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                    print("Error!")
                    
                    
                    
                    
                }
                
        })
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.repos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell")
            as? DataCell
        {
             
            
            let repository = repos[indexPath.row]
            
            
            
        cell.setLabel(repo: repository)
        cell.loadImage(repo: repository)
            
            // Configure the cell...
            
        return cell
        }
        else{
            print("NO DATA!")
            return DataCell()
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        
        return 200.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
    
    
    
    
    
    
    
    
    

    
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


