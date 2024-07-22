//
//  DataManager.swift
//  Ejercicio04SwiftUI
//
//  Created by Alejandro Vidal Gómez Alves on 21/7/24.
//

import Foundation
import CoreData

class DataManager{
  
    func saveData(context: NSManagedObjectContext, name: String, color: String, birthday: Date, city:String, number:String){
        let newPerson = Person(context: context)
        newPerson.name = name
        newPerson.favoriteColor = color
        newPerson.birthDay = birthday
        newPerson.favoriteCity = city
        newPerson.favoriteNumber = Int16(number) ?? 0
        
        do{
            try context.save()
            print("guardo")
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
    }
    func DeleteData(person: Person, context: NSManagedObjectContext){
        context.delete(person)
        do{
            try context.save()
            print("Elimino")
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}
