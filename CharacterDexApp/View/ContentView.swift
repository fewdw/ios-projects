import Foundation
import SwiftUI
struct ContentView: View {
    
    @StateObject private var vm = CharacterViewModel()
    let adaptiveColumn = [GridItem(.adaptive(minimum: 120))]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: adaptiveColumn, spacing: 5){
                    ForEach(vm.characters){ character in
                        NavigationLink(destination: CharacterMoreInfo(character: character)) {
                            CharacterCard(name: character.name, image: character.image)
                        }
                    }
                }
                
            }
            .onAppear(perform: vm.fetchCharacters)
            .navigationTitle("Fred Character Dex")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

