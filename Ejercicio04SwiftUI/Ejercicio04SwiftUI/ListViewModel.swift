//
//  ListViewModel.swift
//  Ejercicio04SwiftUI
//
//  Created by Alejandro Vidal Gómez Alves on 22/7/24.
//

import Foundation
import CoreData
import SwiftUI

class ListViewModel: ObservableObject{
    
    private var dataManager = DataManager()
    
    func deleteData(person: Person, context: NSManagedObjectContext){
        dataManager.DeleteData(person: person, context: context)
    }
    func deleteItems(at offsets: IndexSet, result: FetchedResults<Person>, context: NSManagedObjectContext) {
        for index in offsets {
            let person = result[index]
            deleteData(person: person, context: context)
        }
    }
}
