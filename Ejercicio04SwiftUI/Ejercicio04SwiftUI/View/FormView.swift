//
//  FormView.swift
//  Ejercicio04SwiftUI
//
//  Created by Alejandro Vidal Gómez Alves on 22/7/24.
//

import SwiftUI

struct FormView: View {
    @StateObject private var formViewModel = FormViewModel()
    var body: some View {
        VStack{
            Text("Formulario")
            Form{
                TextField("Nombre",text: $formViewModel.name )
                ColorPicker("Selecione su color favorito", selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/)
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Introduzca su fecha de nacimiento") })
                TextEditor(text: .constant("ciudad Favorita"))
                TextEditor(text: .constant("Numero Favorito"))
            }
            Button(action: {
                
            }, label: {
                Text("Agregar Persona")
            })
        }
    }
}

#Preview {
    FormView()
}
