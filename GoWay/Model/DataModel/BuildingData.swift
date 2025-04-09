import Foundation

struct BuildingData {
    static let facilitiesBuildings: [FacilitiesBuilding] = [
        // FacilitiesBuilding 1
        FacilitiesBuilding(
            id: UUID(),
            name: "Green Office Park 1",
            categories: ["Office"],
            description: "GOP 1 houses a variety of corporate offices within a modern, eco-certified building. Ideal for business professionals, it's surrounded by green landscapes and walking paths.",
            latitude: -6.30064,
            longitude: 106.65054,
            image: "gop_1",
            facilities: [
                Facility(id: UUID(), name: "Traveloka Campus", imageName: "Globe", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide1.jpg", description: "Warm-up before starting your workout."),
                    FacilitiesStepGuide(image: "step_guide2.jpg", description: "Cool down after your workout.")
                ]),
                Facility(id: UUID(), name: "Gowork Coworking Space", imageName: "cafeteria_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide3.jpg", description: "Enjoy a healthy lunch.")
                ]),
                Facility(id: UUID(), name: "Sirclo", imageName: "bathroom_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide4.jpg", description: "Please maintain cleanliness.")
                ]),
                Facility(id: UUID(), name: "CIMB Niaga", imageName: "meeting_room_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide5.jpg", description: "Use the room for scheduled meetings.")
                ]),
                Facility(id: UUID(), name: "Indoor Garden", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide6.jpg", description: "Relax and enjoy the greenery.")
                ]),
                Facility(id: UUID(), name: "Bread Life Tenant", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide6.jpg", description: "Relax and enjoy the greenery.")
                ]),
                Facility(id: UUID(), name: "36 Grams Coffee", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide6.jpg", description: "Relax and enjoy the greenery.")
                ]),
                Facility(id: UUID(), name: "Family Mart", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide6.jpg", description: "Relax and enjoy the greenery.")
                ]),
                Facility(id: UUID(), name: "Restroom", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide6.jpg", description: "Relax and enjoy the greenery.")
                ]),
                Facility(id: UUID(), name: "Prayer Room", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide6.jpg", description: "Relax and enjoy the greenery.")
                ]),
                Facility(id: UUID(), name: "Parking Area", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide6.jpg", description: "Relax and enjoy the greenery.")
                ])
            ]
        ),
        
        // FacilitiesBuilding 2
        FacilitiesBuilding(
            id: UUID(),
            name: "Green Office Park 5",
            categories: ["Parking Area"],
            description: "GOP 5 serves as the main parking and shuttle area for visitors and employees, offering a convenient place to start your day in GOP. It’s well-connected to other buildings through pedestrian-friendly paths.",
            latitude: -6.30285,
            longitude: 106.65170,
            image: "gop_5",
            facilities: [
                Facility(id: UUID(), name: "Parking Area", imageName: "bathroom_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide7.jpg", description: "Keep the bathroom clean and tidy.")
                ])
            ]
        ),
        
        // FacilitiesBuilding 3
        FacilitiesBuilding(
            id: UUID(),
            name: "Green Office Park 6",
            categories: ["Office"],
            description: "GOP 6 is a popular office building known for its clean design and proximity to cafés. With several startup and tech companies based here, the energy is always youthful and dynamic.",
            latitude: -6.30277,
            longitude: 106.65346,
            image: "gop_6",
            facilities: [
                Facility(id: UUID(), name: "Restroom", imageName: "bathroom_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide7.jpg", description: "Keep the bathroom clean and tidy.")
                ]),
                Facility(id: UUID(), name: "Canteen", imageName: "food_court_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide8.jpg", description: "Choose from a variety of food options.")
                ]),
                Facility(id: UUID(), name: "Tebemori Coffee", imageName: "lounge_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide9.jpg", description: "Relax and network in the business lounge.")
                ]),
                Facility(id: UUID(), name: "Kozaku Pan", imageName: "conference_room_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide10.jpg", description: "For meetings and presentations.")
                ]),
                Facility(id: UUID(), name: "Lawson", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "Bank Sinarmas", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "Bank Mandiri", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "Indoor Parking", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "My Republic Office", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "4 Life Office", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Sinergi Tridaya Medical", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Cuansi Cahaya Utama", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "John Robert Powers Office", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Zinkpower Austrindo", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Omnia Paratus Teknologi", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "Fire Fighting System Aura Bumi Indonesia", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "Indonesia Harvest Chemical", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Digita Scientia Indonesia", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Bintang Timur Karisma Harapan", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "Bumi Parama Wisesa", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT BD Agriculture Indonesia", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Hudoro Solusi Digital", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Weir Minerals Indonesia", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "PT Parama Agrapana Sakti", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ]),
                Facility(id: UUID(), name: "DAF Property", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide11.jpg", description: "A quiet space for reading and work.")
                ])
            ]
        ),
        
        // FacilitiesBuilding 4
        FacilitiesBuilding(
            id: UUID(),
            name: "Green Office Park 9",
            categories: ["Office"],
            description: "GOP 9 is a corporate hub for top-tier companies, offering a professional atmosphere with green spaces and walkways. Perfect for meetings, day-to-day office work, or business visits.",
            latitude: -6.30263,
            longitude: 106.65336,
            image: "gop_9",
            facilities: [
                Facility(id: UUID(), name: "Restroom", imageName: "coffee_station_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide17.jpg", description: "Enjoy complimentary coffee throughout the day.")
                ]),
                Facility(id: UUID(), name: "Auditorium", imageName: "meeting_room_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide18.jpg", description: "Book ahead for meetings.")
                ]),
                Facility(id: UUID(), name: "Indoor Parking", imageName: "recreation_room_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide19.jpg", description: "Take breaks and relax in the recreation room.")
                ]),
                Facility(id: UUID(), name: "Prayer Room", imageName: "elevator_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide20.jpg", description: "For quick access between floors.")
                ]),
                Facility(id: UUID(), name: "Shower Room", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Canteen", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Garden", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Alfamart", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Apple Developer Academy", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Commsult Indonesia", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Purwadhika Digital Technology School", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Monash University", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Farmsco Indonesia", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Eka Hospital Office", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "NTT Data", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "PT Bithealth Indonesia", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "GBI", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "PT Sinar Mitbana Mas", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "PT Reinhausen Indonesia", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "NEX Entertaiment", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ]),
                Facility(id: UUID(), name: "Living Lab Ventures", imageName: "rooftop_garden_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide21.jpg", description: "Relax and unwind with a view.")
                ])
            ]
        ),
        
        // FacilitiesBuilding 5
        FacilitiesBuilding(
            id: UUID(),
            name: "The Breeze",
            categories: ["Mall", "Commercial"],
            description: "The Breeze is an open-concept lifestyle mall perfect for relaxation, dining, and socializing. With a scenic riverside view, this eco-friendly mall offers a refreshing space to unwind after work or enjoy a weekend hangout.",
            latitude: -6.30106,
            longitude: 106.65338,
            image: "the_breeze",
            facilities: [
                Facility(id: UUID(), name: "Shared Desk", imageName: "shared_desk_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide22.jpg", description: "Collaborate and work together.")
                ]),
                Facility(id: UUID(), name: "ATM Center", imageName: "rest_area_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide23.jpg", description: "Rest and recharge in the dedicated rest area.")
                ]),
                Facility(id: UUID(), name: "Basket Arena", imageName: "fitness_center_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide24.jpg", description: "Work on your fitness goals with our equipment.")
                ]),
                Facility(id: UUID(), name: "Bicycle Track", imageName: "library_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide25.jpg", description: "Find quiet spaces for focused reading or study.")
                ]),
                Facility(id: UUID(), name: "Koi Pond", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Nursery Room", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Prayer Room", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Restroom", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Cinema", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Kumulo Creative Compound", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Ranch Market", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Gold's Gym", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Wolv Barbershop", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Spincity Bowling Alley", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Q Billiard", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Optik Melawai", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Arabica", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Fore", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Old Town White Coffee", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Starbucks", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Boost", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Chatime", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Colico", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Dum Dum", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Fruity", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Re.juve", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Auntie Anne's", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Burgreens", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Chateraise", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Croco by Monseur Spoon", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Dore by Letao", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Gindaco", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "J.Co", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Kenangan Signature", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "N.O.B", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Montato", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Paul Le Cafe", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Salad Stop", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Sinamon", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Social Bread", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Saur Sally", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Subway", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Tamper", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "The Pancake Co by Dore", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "The People's Cafe", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Vivoli Gelato", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Bebek Bengil", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Brewerkz", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Chakra", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Chong Qing Hot Pot", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Cutt & Grill", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "D'Cost", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Fire Prawn", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Gallura", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Gion Sushi", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Gubuk Makan Mang Engking", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Hatchi Grill", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Han Guksu", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Honu", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Ikkudo Ichi", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Jalarasa", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Jittlada", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Katsukita", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Kitchenette", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Leko", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Marugame Udon", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Saigon Delight", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Sakbiru Izakaya", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Sate Khas Senayan", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Sushi Tei", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Villa Capri", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Wee Nam Kee", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Boots", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ]),
                Facility(id: UUID(), name: "Guardian", imageName: "cafe_icon", stepGuides: [
                    FacilitiesStepGuide(image: "step_guide26.jpg", description: "Enjoy a cup of coffee or snack while working.")
                ])
            ]
        )
    ]
    
    static let buswayBuildings: [BuswayBuilding] = [
               // BuswayBuilding 1
               BuswayBuilding(
                   id: UUID(),
                   name: "GOP Busway Terminal 1",
                   categories: ["Transport"],
                   description: "Busway terminal with access to main routes.",
                   latitude: -6.299200,
                   longitude: 106.651800,
                   image: "bus_station",
                   busSchedule: [
                       "Route B200: GOP 1 Main Entrance to Central Station",
                       "Route B201: GOP 2 Side Entrance to City Center",
                       "Route B202: GOP 3 Main Entrance to Downtown",
                       "Route B203: GOP 1 Back Entrance to Airport",
                       "Route B204: GOP 2 Front Entrance to Mall"
                   ]
               ),
               
               // BuswayBuilding 2
               BuswayBuilding(
                   id: UUID(),
                   name: "GOP Busway Terminal 2",
                   categories: ["Transport"],
                   description: "Another busway terminal serving additional routes.",
                   latitude: -6.300100,
                   longitude: 106.653300,
                   image: "bus_station",
                   busSchedule: [
                       "Route B205: GOP 1 Main Entrance to Uptown",
                       "Route B206: GOP 3 Front Entrance to Market",
                       "Route B207: GOP 4 Side Entrance to Beach",
                       "Route B208: GOP 5 Back Entrance to Library",
                       "Route B209: GOP 1 Main Entrance to Park"
                   ]
               ),
               
               // BuswayBuilding 3
               BuswayBuilding(
                   id: UUID(),
                   name: "GOP Busway Terminal 3",
                   categories: ["Transport"],
                   description: "Terminal with easy access to public transport.",
                   latitude: -6.301700,
                   longitude: 106.654400,
                   image: "bus_station",
                   busSchedule: [
                       "Route B210: GOP 1 Back Entrance to Central Park",
                       "Route B211: GOP 2 Side Entrance to Museum",
                       "Route B212: GOP 3 Front Entrance to Hospital",
                       "Route B213: GOP 4 Main Entrance to Station",
                       "Route B214: GOP 5 Front Entrance to Zoo"
                   ]
               ),
               
               // BuswayBuilding 4
               BuswayBuilding(
                   id: UUID(),
                   name: "GOP Busway Terminal 4",
                   categories: ["Transport"],
                   description: "Busway terminal with access to multiple destinations.",
                   latitude: -6.303200,
                   longitude: 106.655500,
                   image: "bus_station",
                   busSchedule: [
                       "Route B215: GOP 3 Side Entrance to Convention Center",
                       "Route B216: GOP 1 Main Entrance to Theater",
                       "Route B217: GOP 2 Side Entrance to Restaurant",
                       "Route B218: GOP 5 Back Entrance to Market Place",
                       "Route B219: GOP 4 Front Entrance to Park"
                   ]
               ),
               
               // BuswayBuilding 5
               BuswayBuilding(
                   id: UUID(),
                   name: "GOP Busway Terminal 5",
                   categories: ["Transport"],
                   description: "Final busway terminal with convenient access.",
                   latitude: -6.304300,
                   longitude: 106.656600,
                   image: "bus_station",
                   busSchedule: [
                       "Route B220: GOP 2 Main Entrance to Shopping Mall",
                       "Route B221: GOP 1 Front Entrance to Theater",
                       "Route B222: GOP 3 Side Entrance to Stadium",
                       "Route B223: GOP 4 Back Entrance to Mall",
                       "Route B224: GOP 5 Front Entrance to Airport"
                   ]
               )
           ]
}
