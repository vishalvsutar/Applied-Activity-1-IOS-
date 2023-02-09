//
//  ViewController.swift
//  Assignment1
//
//  Created by Vishal Sutar on 2023-02-08.
//

import UIKit

class ViewController: UIViewController {


    
    @IBAction func fetchAnime(_ sender: Any) {
        Task{
            do{
                print(try await AnimeHelper.fetchAnime())
            } catch let err{
                print("there was an error in SWAPIAPI: \(err)")
            }
        }
    }
    
    @IBAction func fetchBible(_ sender: Any) {
        Task{
            do{
                print(try await BibleHelper.fetchBible())
            } catch let err{
                print("there was an error in SWAPIAPI: \(err)")
            }
        }
    }
    
    @IBAction func fetchFruit(_ sender: Any) {
        Task{
            do{
                print(try await FruitHelper.fetchFruit())
            } catch let err{
                print("there was an error in SWAPIAPI: \(err)")
            }
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

