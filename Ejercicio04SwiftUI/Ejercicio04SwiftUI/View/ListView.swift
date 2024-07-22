//
//  ListView.swift
//  Ejercicio04SwiftUI
//
//  Created by Alejandro Vidal Gómez Alves on 22/7/24.
//

import SwiftUI

struct ListView: View {
    var prueba: [Person] = []
    var body: some View {
        NavigationView {
            VStack{
                if prueba.isEmpty {
                    Text("No se han encontrados Datos")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }else{
                    List(){
                        
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
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
