# Little Lemon App - Core Data Integration

## Overview

In this course, I've developed key skills in handling data within iOS apps using Core Data, interfacing with REST APIs, and managing user interactions. This README briefly outlines the Core Data functions implemented in the final project for the Little Lemon app.

## Core Data Functions

### 1. **retrieveMenuItems()**
- **Purpose:** Fetches the food menu via a REST API.
- **Method:** Uses `URLSession` for asynchronous data retrieval.

### 2. **decodeMenuItems(from data: Data)**
- **Purpose:** Decodes JSON data into `MenuItem` structs.
- **Method:** Implements `JSONDecoder` and the Codable protocol.

### 3. **saveItemsToCoreData(_ items: [MenuItem], context: NSManagedObjectContext)**
- **Purpose:** Stores items in Core Data, checking for duplicates.
- **Method:** Uses a loop with `dishExists` checks and saves new entries.

### 4. **fetchSortedAndFilteredDishes(searchText: String, context: NSManagedObjectContext)**
- **Purpose:** Fetches and sorts dishes based on user input.
- **Method:** Applies `NSPredicate` for filtering and `NSSortDescriptor` for sorting.

### 5. **showOrderConfirmation(for dish: Dish)**
- **Purpose:** Displays a confirmation alert on selecting a dish.
- **Method:** Triggered by user interaction with UI elements.

<p align="center">
  <img src="https://github.com/mananjain0220/CoreData-Exercise/assets/19812569/5e5e6c45-546c-416f-a758-f00276f30d8f" width="50%" />
   <img src="https://github.com/mananjain0220/CoreData-Exercise/assets/19812569/a4c201d4-ec44-44d1-aedb-7ed4e2d5fcbd" width="50%" />
   </p><img src="https://github.com/mananjain0220/CoreData-Exercise/assets/19812569/a415d7de-3757-4bcb-bb61-adbc70ed242e" width="50%" />
 

