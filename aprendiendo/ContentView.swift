//
//  ContentView.swift
//  aprendiendo
//
//  Created by Alberto Banet Masa on 31/10/23.
//

import SwiftUI

struct ContentView: View {
  @State var events: [Event] = [
      Event(title: "Caminar 5km", description: "Distancia caminada hoy", lastOccurrence: Date(), numberOfOccurrences: 5),
      Event(title: "Leer 50 páginas", description: "Páginas leídas hoy", lastOccurrence: Date(), numberOfOccurrences: 3),
      Event(title: "Beber 2L de agua", description: "Agua consumida hoy", lastOccurrence: Date(), numberOfOccurrences: 7),
      Event(title: "Estudiar 2 horas", description: "Tiempo dedicado al estudio hoy", lastOccurrence: Date(), numberOfOccurrences: 4),
      Event(title: "Practicar yoga", description: "Sesiones de yoga completadas", lastOccurrence: Date(), numberOfOccurrences: 6),
      Event(title: "Comer 5 frutas", description: "Frutas consumidas hoy", lastOccurrence: Date(), numberOfOccurrences: 2),
      Event(title: "Dormir 8 horas", description: "Horas de sueño anoche", lastOccurrence: Date(), numberOfOccurrences: 5),
      Event(title: "Meditar 15 minutos", description: "Tiempo dedicado a la meditación hoy", lastOccurrence: Date(), numberOfOccurrences: 3),
      Event(title: "Realizar limpieza", description: "Sesiones de limpieza realizadas", lastOccurrence: Date(), numberOfOccurrences: 4),
      Event(title: "Cocinar en casa", description: "Veces que cocinaste en casa esta semana", lastOccurrence: Date(), numberOfOccurrences: 6)
  ]

    
  @State private var showingNewEventView = false
  
  init() {
      UINavigationBar.appearance().setCustomAppearance(background: UIColor(named: "AppBackground") ?? .blue)
  }

  
  var body: some View {

  
      NavigationView {
            ZStack {
                Color("AppBackground")
                    .ignoresSafeArea() // Esto hará que el color llene toda la pantalla
                
                ScrollView {
                    LazyVStack {
                        ForEach(events) { event in
                            EventView(event: event)
                        }
                  
                    }
                    .padding()
                }
                .navigationBarTitle("¿Recuerdas tu última vez?", displayMode: .inline)
              VStack {
                      Spacer()
                      HStack {
                                      Spacer()
                                      
                                      Button(action: {
                                          showingNewEventView.toggle()
                                      }) {
                                          Image(systemName: "plus.circle.fill")
                                              .resizable()
                                              .frame(width: 60, height: 60)
                                              .foregroundColor(Color("FloatingButton"))
                                      }
                                      .padding()
                                      .sheet(isPresented: $showingNewEventView) {
                                          NewEventView(isPresented: $showingNewEventView)
                                      }
                                      
                                      Spacer()
                                  }
              }
            }
      }
    
  }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
