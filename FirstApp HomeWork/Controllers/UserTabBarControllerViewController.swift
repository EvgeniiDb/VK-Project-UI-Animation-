//
//  UserTabBarControllerViewController.swift
//  FirstApp HomeWork
//
//  Created by Евгений Доброволец on 30.01.2022.
//

import UIKit

class UserTabBarControllerViewController: UITabBarController {

    func setupUser() -> [User] {
        
        var resultArray = [User]()
        
        let userOnePhotoArray = [UIImage(named: "AS")!, UIImage(named: "AS")!, UIImage(named: "AS")!, UIImage(named: "AS")!]
        let userOne = User(name: "Iron Arny", avatar: UIImage(named: "AS")!, photoArray: userOnePhotoArray)
        
        resultArray.append(userOne)
        
        let userTwoPhotoArray = [UIImage(named: "DJ")!, UIImage(named: "DJ")!, UIImage(named: "DJ")!, UIImage(named: "DJ")!]
        let userTwo = User(name: "Don Jonson", avatar: UIImage(named: "DJ")!, photoArray: userTwoPhotoArray)
        
        resultArray.append(userTwo)
        
        let userThreePhotoArray = [UIImage(named: "MR")!, UIImage(named: "MR")!, UIImage(named: "MR")!, UIImage(named: "MR")!]
        let userThree = User(name: "Evgenii Di", avatar: UIImage(named: "MR")!, photoArray: userThreePhotoArray)
        
        resultArray.append(userThree)
        
        let userFourPhotoArray = [UIImage(named: "BY")!, UIImage(named: "BY")!, UIImage(named: "BY")!, UIImage(named: "BY")!]
        let userFour = User(name: "Bruce Toughie", avatar: UIImage(named: "BY")!, photoArray: userFourPhotoArray)
        
        resultArray.append(userFour)
        
        let sortiredNames = resultArray.sorted(by: {$0.name < $1.name})
        
        resultArray = sortiredNames
        
        return resultArray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let friendsNavigationController = self.viewControllers?.first as? UINavigationController,
           let friendsVC = friendsNavigationController.viewControllers.first as? FriendsTableViewController {
            friendsVC.configure(userArray: setupUser())
        }
    }

}
