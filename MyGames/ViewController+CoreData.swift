//
//  ViewController+CoreData.swift
//  MyGames
//
//  Created by Michelli Cristina de Paulo Lima on 29/04/23.
//

import CoreData
import UIKit

extension UIViewController {

    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }

}
