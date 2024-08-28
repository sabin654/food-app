import SwiftUI

struct FoodDetailView: View {
    let food: Food
    
    var body: some View {
        ScrollView {
            VStack {
                // Image
                Image(food.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                    .padding(.bottom, 20)
                
                VStack(alignment: .leading, spacing: 16) {
                    // Food Name
                    Text(food.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(.horizontal)
                    
                    // Rating
                    HStack {
                        ForEach(0..<5) { index in
                            Image(systemName: index < 4 ? "star.fill" : "star")
                                .foregroundColor(index < 4 ? .yellow : .gray)
                        }
                        Text("(4.0)") // Example rating
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                    
                    // Offers
                    HStack {
                        Text("Special Offer")
                            .font(.headline)
                            .foregroundColor(.red)
                        Spacer()
                        Text("20% Off")
                            .font(.headline)
                            .foregroundColor(.green)
                    }
                    .padding(.horizontal)
                    
                    // Food Description
                    Text(food.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                    
                    // Action Buttons
                    HStack {
                        Button(action: {
                            // Action for order
                        }) {
                            Text("Order Now")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.trailing, 8)
                        
                        Button(action: {
                            // Action for buy now
                        }) {
                            Text("Buy Now")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.leading, 8)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
                .padding(.top, 10)
                .background(Color(UIColor.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
                .padding(.horizontal)
            }
        }
        .navigationTitle("Food Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(food: Food(name: "Sample Food", imageName: "food", description: "A sample food description that provides details about this item. This is a multiline description to show how it will be displayed in the view."))
    }
}

