//
//  FormView.swift
//  Ejercicio04SwiftUI
//
//  Created by Alejandro Vidal Gómez Alves on 22/7/24.
//

import SwiftUI

struct FormView: View {
    @StateObject private var formViewModel = FormViewModel()
    @Environment(\.managedObjectContext) var context
    var body: some View {
        VStack{
            Text("Formulario")
            Form{
                TextField("Nombre",text: $formViewModel.name )
                ColorPicker("Selecione su color favorito", selection: .constant(.red))
                DatePicker(selection: .constant(formViewModel.data), label: { Text("Introduzca su fecha de nacimiento") })
                TextField("Ciudad Favorita", text: $formViewModel.city)
                TextField("Numero Favorito", text: $formViewModel.number)
            }
            Button(action: {
                formViewModel.SaveData(context: context)
            }, label: {
                Text("Agregar Persona")
            })
        }
    }
}

#Preview {
    FormView()
}
