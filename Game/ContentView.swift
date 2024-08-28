import SwiftUI

struct ContentView: View {
    let foodItems = foodData
    
    var body: some View {
        NavigationView {
            List(foodItems) { item in
                NavigationLink(destination: FoodDetailView(food: item)) {
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 5)

                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Text(item.description)
                                .font(.subheadline)
                                .lineLimit(2)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Food Menu")
            .padding(.top) // Add some space at the top
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

