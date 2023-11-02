import SwiftUI

struct NewEventView: View {
    @Binding var isPresented: Bool
    
    @State private var eventDescription: String = ""
    
    var body: some View {
        VStack {
            Text("Crear nuevo evento")
                .font(.headline)
            
            Text("Introduce la descripción del evento:")
            
            TextField("Descripción", text: $eventDescription)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            HStack {
                Button("Cancelar") {
                    isPresented = false
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("OK") {
                    // Aquí puedes añadir el código para guardar el nuevo evento
                    isPresented = false
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .padding()
    }
}
