import SwiftUI

struct EventView: View {
    @State var event: Event
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.headline)
                    .foregroundColor(Color("TituloEvento"))
                Text(event.description)
                                        .font(.subheadline)

               
                HStack {
                    HStack {
                        Image("Hace")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        Text("Hace: 4h 52m")
                            .font(.footnote)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    Spacer()
                    HStack {
                        Image("Calendario")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        Text("04-11-2023")
                            .font(.footnote)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                }
                HStack {
                    HStack {
                        Image("Veces")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        Text("4 veces")
                            .font(.footnote)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    Spacer()
                    HStack {
                        Image("Campana")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                        Text("Faltan 4h 5m")
                            .font(.footnote)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                }
                    
                                   
                                   
                
               
            }
            
            Spacer()
            
            Button(action: {
                // Aquí puedes agregar la acción para crear una nueva ocurrencia del evento
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("NuevaOcurrencia"))
                  
            }
            .padding(.leading, 4.0)
        }
        .padding()
        .background(Color("EventBackground"))
        .cornerRadius(10)
        
    }
    
    func formattedDate(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

struct Previews_EventView_Previews: PreviewProvider {
  static var previews: some View {
    EventView(event: Event(title: "Caminar 5km",
                                 description: "Distancia caminada hoy",
                                 lastOccurrence: Date(),
                                 numberOfOccurrences: 5))
               
  }
}
