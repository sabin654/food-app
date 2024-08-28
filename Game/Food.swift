import Foundation

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
}


let foodData = [
    Food(name: "Pizza", imageName: "pizza", description: "A classic Margherita pizza topped with fresh basil and mozzarella cheese."),
    Food(name: "Burger", imageName: "burger", description: "A delicious cheeseburger with lettuce, tomato, and a juicy beef patty."),
    Food(name: "Sushi", imageName: "sushi", description: "A variety of fresh sushi rolls served with soy sauce and wasabi."),
    Food(name: "Salad", imageName: "salad", description: "A fresh garden salad with mixed greens, cucumbers, and a light vinaigrette."),
    Food(name: "Pasta", imageName: "pasta", description: "A plate of spaghetti pasta topped with marinara sauce and parmesan cheese.")
]
