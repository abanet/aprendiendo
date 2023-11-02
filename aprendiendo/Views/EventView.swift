import SwiftUI

struct EventView: View {
    @State var event: Event
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.headline)
                
                Text(event.description)
                    .font(.subheadline)
                
                Text("Última vez: \(formattedDate(from: event.lastOccurrence))")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                Text("Número de veces: \(event.numberOfOccurrences)")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Button(action: {
                // Aquí puedes agregar la acción para crear una nueva ocurrencia del evento
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color("AppBackground"))
                  
            }
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
