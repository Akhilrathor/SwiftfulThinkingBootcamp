//
//  ViewModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 30/07/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading:Bool = false
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Apples", count: 11)
        let fruit2 = FruitModel(name: "Banana", count: 20)
        let fruit3 = FruitModel(name: "Pomengrate", count: 3)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
      
    }
    
    func deleteFruits(index: IndexSet)  {
        fruitArray.remove(atOffsets: index)
    }
}



struct ViewModelBootcamp: View {
//    @State var fruitArray: [FruitModel] = []
    
    @ObservedObject var fruitViewModel:FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView{
            List{
                if fruitViewModel.isLoading{
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { array in
                        HStack{
                            Text("\(array.count)")
                                .foregroundColor(.red)
                            Text("\(array.name)")
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruits)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            .onAppear{
                fruitViewModel.getFruits()
            }
        }
    }
    
}

#Preview {
    ViewModelBootcamp()
}
