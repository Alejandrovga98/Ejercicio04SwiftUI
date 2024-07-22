//
//  ListView.swift
//  Ejercicio04SwiftUI
//
//  Created by Alejandro Vidal Gómez Alves on 22/7/24.
//

import SwiftUI

struct ListView: View {
    @FetchRequest(entity: Person.entity(), sortDescriptors: [NSSortDescriptor(key: "name", ascending: true)]) var results : FetchedResults<Person>
    @Environment(\.managedObjectContext) var context
    @StateObject private var listViewModel = ListViewModel()
    var body: some View {
        NavigationView {
            VStack{
                if results.isEmpty {
                    Text("No se han encontrados Datos")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }else{
                    NavigationView {
                        List{
                            ForEach(results){ item in
                                NavigationLink(destination: DetailView()) {
                                    Text(item.name ?? "Usuario Desconocido")
                                }
                                
                            }.onDelete(perform: { indexSet in
                                listViewModel.deleteItems(at: indexSet, result: results, context: context)
                            })
                        }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
                NavigationLink(destination: FormView()) {
                    Text("Agregar Usuario")
                        .foregroundColor(.blue)
                }
            }
        }
       
    }
}

#Preview {
    ListView()
}
