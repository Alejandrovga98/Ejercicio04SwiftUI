//
//  FormViewModel.swift
//  Ejercicio04SwiftUI
//
//  Created by Alejandro Vidal Gómez Alves on 22/7/24.
//

import Foundation
import CoreData
import SwiftUI

class FormViewModel: ObservableObject{
    @Published var name: String = ""
    @Published var color: String = "Red"
    @Published var data = Date()
    @Published var city: String = ""
    @Published var number: String = ""
    
    private var dataManager = DataManager()
    
    
    func SaveData(context: NSManagedObjectContext){
        dataManager.saveData(context: context, name: name, color: color, birthday: data, city: city, number: number)
    }
}
