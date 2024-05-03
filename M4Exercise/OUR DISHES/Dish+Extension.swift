import Foundation
import CoreData


extension Dish {
    
    static func createDishesFrom(menuItems:[MenuItem],_ context:NSManagedObjectContext) {
        
        menuItems.forEach{
            menuItem in
            guard !dishExists(withName: menuItem.title, in: context) else {
                            return
                        }
                        let newDish = Dish(context: context)
                        newDish.name = menuItem.title
                        newDish.price = Float(menuItem.price)!
                    }
                    do {
                        try context.save()
                    } catch {
                        print("Error saving context: \(error.localizedDescription)")
                    }
                }
    
    static func dishExists(withName name: String, in context: NSManagedObjectContext) -> Bool {
        let request: NSFetchRequest<Dish> = Dish.fetchRequest()
        request.predicate = NSPredicate(format: "name == %@", name)
        do {
            let results = try context.fetch(request)
            return (results.first != nil)
        } catch {
            print("Error fetching dish with name \(name): \(error)")
            return false
        }
    }
}
