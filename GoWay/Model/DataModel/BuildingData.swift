import Foundation

struct BuildingData {
    static let facilitiesBuildings: [FacilitiesBuilding] = [
        // FacilitiesBuilding 1
        FacilitiesBuilding(
            id: UUID(),
            name: "Green Office Park 1",
            categories: ["Office"],
            description: "Green Office Park 1 houses a variety of corporate offices within a modern, eco-certified building. Ideal for business professionals, it's surrounded by green landscapes and walking paths.",
            latitude: -6.30064,
            longitude: 106.65054,
            image: "gop_1",
            facilities: [
                Facility(id: UUID(), name: "Traveloka Campus", imageName: "traveloka_campus"),
                Facility(id: UUID(), name: "Gowork Coworking Space",imageName:"go_work"),
                Facility(id: UUID(), name: "Sirclo",imageName:"sirclo"),
                Facility(id: UUID(), name: "CIMB Niaga",imageName:"cimb_niaga"),
                Facility(id: UUID(), name: "Indoor Park",imageName:"indoor_park"),
                Facility(id: UUID(), name: "36 Grams Coffee",imageName:"tigaenam_coffe"),
                Facility(id: UUID(), name: "Family Mart", imageName: "family_mart"),
                Facility(id: UUID(), name: "Restroom", imageName: "restroom"),
                Facility(id: UUID(), name: "Prayer Room", imageName: "prayer_room"),
                Facility(id: UUID(), name: "Parking Area", imageName: "parking_area")
            ]
        ),
        
        // FacilitiesBuilding 2
        FacilitiesBuilding(
            id: UUID(),
            name: "Green Office Park 5",
            categories: ["Parking Area"],
            description: "Green Office Park 5 serves as the main parking and shuttle area for visitors and employees, offering a convenient place to start your day in Green Office Park. It’s well-connected to other buildings through pedestrian-friendly paths.",
            latitude: -6.30285,
            longitude: 106.65170,
            image: "gop_5",
            facilities: [
                Facility(id: UUID(), name: "Motorbike Parking Area", imageName: "motor_parking"),
                Facility(id: UUID(), name: "Car Parking Area", imageName: "car_parking")
            ]
        ),
                

        
        // FacilitiesBuilding 3
        FacilitiesBuilding(
            id: UUID(),
            name: "Green Office Park 6",
            categories: ["Office"],
            description: "Green Office Park 6 is a popular office building known for its clean design and proximity to cafés. With several startup and tech companies based here, the energy is always youthful and dynamic.",
            latitude: -6.30277,
            longitude: 106.65346,
            image: "gop_6",
            facilities: [
                Facility(id: UUID(), name: "Restroom", imageName: "restroom"),
                Facility(id: UUID(), name: "Canteen", imageName: "canteen_gop9"),
                Facility(id: UUID(), name: "Tebemori Coffee", imageName: "tebemori_coffe"),
                Facility(id: UUID(), name: "Kozaku Pan", imageName: "kozaku_pan"),
                Facility(id: UUID(), name: "Lawson", imageName: "lawson"),
                Facility(id: UUID(), name: "Bank Sinarmas", imageName: "bank_sinarmas"),
                Facility(id: UUID(), name: "Bank Mandiri", imageName: "bank_mandiri"),
                Facility(id: UUID(), name: "Parking Area", imageName: "parking_area"),
                Facility(id: UUID(), name: "My Republic Office", imageName: "my_republic"),
                Facility(id: UUID(), name: "4 Life Office", imageName: "four_life"),
                Facility(id: UUID(), name: "PT Sinergi Tridaya Medical", imageName: "sinergi_medical"),
                Facility(id: UUID(), name: "John Robert Powers Office", imageName: "john_robert"),
                Facility(id: UUID(), name: "PT Zinkpower Austrindo", imageName: "zinkpower",),
                Facility(id: UUID(), name: "PT Omnia Paratus Teknologi", imageName: "omnia_teknologi"),
                Facility(id: UUID(), name: "Fire Fighting System Aura Bumi Indonesia", imageName: "aura_bumi",),
                Facility(id: UUID(), name: "Indonesia Harvest Chemical", imageName: "harvest_chemical",),
                Facility(id: UUID(), name: "PT Digita Scientia Indonesia", imageName: "digita_scientia"),
                Facility(id: UUID(), name: "PT Bintang Timur Karisma Harapan", imageName: "bintang_timur"),
                Facility(id: UUID(), name: "Bumi Parama Wisesa", imageName: "bumi_wisesa"),
                Facility(id: UUID(), name: "PT BD Agriculture Indonesia", imageName: "bd_agriculture"),
                Facility(id: UUID(), name: "PT Hudoro Solusi Digital", imageName: "hudoro_digital"),
                Facility(id: UUID(), name: "PT Weir Minerals Indonesia", imageName: "weir_minerals"),
                Facility(id: UUID(), name: "DAF Property", imageName: "daf_property")
            ]
        ),
        
        // FacilitiesBuilding 4
        FacilitiesBuilding(
            id: UUID(),
            name: "Green Office Park 9",
            categories: ["Office"],
            description: "Green Office Park 9 is a corporate hub for top-tier companies, offering a professional atmosphere with green spaces and walkways. Perfect for meetings, day-to-day office work, or business visits.",
            latitude: -6.30263,
            longitude: 106.65336,
            image: "gop_9",
            facilities: [
                Facility(id: UUID(), name: "Shower Room", imageName: "shower_room", stepGuides: [
                                    FacilitiesStepGuide(image: "shower_step1", description: "Find this starting point"), FacilitiesStepGuide(image: "shower_step2", description: "Go straight, the  go down by lift or stairs"), FacilitiesStepGuide(image: "shower_step3", description: "Turn Left"), FacilitiesStepGuide(image: "shower_step4", description: "Turn Left"), FacilitiesStepGuide(image: "shower_step5", description: "Turn Right")
                                ]),
                Facility(id: UUID(), name: "Auditorium", imageName: "auditorium"),
                Facility(id: UUID(), name: "Parking Area", imageName: "parking_area"),
                Facility(id: UUID(), name: "Prayer Room", imageName: "prayer_room"),
                Facility(id: UUID(), name: "Restroom", imageName: "restroom", stepGuides: [
                                    FacilitiesStepGuide(image: "restroom_step1", description: "Go straight"), FacilitiesStepGuide(image: "restroom_step2", description: "Turn Right"), FacilitiesStepGuide(image: "restroom_step3", description: "See the hallway? Go straight"), FacilitiesStepGuide(image: "restroom_step4", description: "Turn Left")
                                ]),
                Facility(id: UUID(), name: "Canteen", imageName: "canteen_gop9"),
                Facility(id: UUID(), name: "Outdoor Park", imageName: "outdoor_park"),
                Facility(id: UUID(), name: "Alfamart", imageName: "alfamart",),
                Facility(id: UUID(), name: "Apple Developer Academy", imageName: "appdev"),
                Facility(id: UUID(), name: "Commsult Indonesia", imageName: "commsult"),
                Facility(id: UUID(), name: "Purwadhika Digital Technology School", imageName: "purwadhika"),
                Facility(id: UUID(), name: "Monash University", imageName: "monash"),
                Facility(id: UUID(), name: "Farmsco Indonesia", imageName: "farmsco"),
                Facility(id: UUID(), name: "Eka Hospital Office", imageName: "eka_hospital",),
                Facility(id: UUID(), name: "NTT Data", imageName: "ntt_data"),
                Facility(id: UUID(), name: "PT Bithealth Indonesia", imageName: "bithealth"),
                Facility(id: UUID(), name: "GBI", imageName: "gbi"),
                Facility(id: UUID(), name: "PT Sinar Mitbana Mas", imageName: "sinar_mitbana"),
                Facility(id: UUID(), name: "PT Reinhausen Indonesia", imageName: "reinhausen"),
                Facility(id: UUID(), name: "NEX Entertaiment", imageName: "nex"),
                Facility(id: UUID(), name: "Living Lab Ventures", imageName: "living_lab")
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
                Facility(id: UUID(), name: "ATM Center", imageName: "atm_center"),
                Facility(id: UUID(), name: "Basket Arena", imageName: "basket"),
                Facility(id: UUID(), name: "Bicycle Track", imageName: "bicycle"),
                Facility(id: UUID(), name: "Koi Pond", imageName: "koi_pond"),
                Facility(id: UUID(), name: "Nursery Room", imageName: "nursery"),
                Facility(id: UUID(), name: "Prayer Room", imageName: "prayer_room"),
                Facility(id: UUID(), name: "Restroom", imageName: "restroom"),
                Facility(id: UUID(), name: "Cinema", imageName: "cinema"),
                Facility(id: UUID(), name: "Kumulo Creative Compound", imageName: "kumulo"),
                Facility(id: UUID(), name: "Ranch Market", imageName: "ranch_market"),
                Facility(id: UUID(), name: "Gold's Gym", imageName: "golds_gym"),
                Facility(id: UUID(), name: "Wolv Barbershop", imageName: "wolv_barber"),
                Facility(id: UUID(), name: "Spincity Bowling Alley", imageName: "spincity_bowling"),
                Facility(id: UUID(), name: "Q Billiard", imageName: "q_billiard"),
                Facility(id: UUID(), name: "Optik Melawai", imageName: "optik_melawai"),
                Facility(id: UUID(), name: "Arabica", imageName: "arabica"),
                Facility(id: UUID(), name: "Fore", imageName: "fore"),
                Facility(id: UUID(), name: "Old Town White Coffee", imageName: "old_town"),
                Facility(id: UUID(), name: "Starbucks", imageName: "sbucks"),
                Facility(id: UUID(), name: "Boost", imageName: "boost"),
                Facility(id: UUID(), name: "Chatime", imageName: "chatime"),
                Facility(id: UUID(), name: "Colico", imageName: "colico"),
                Facility(id: UUID(), name: "Dum Dum", imageName: "dumdum"),
                Facility(id: UUID(), name: "Fruity", imageName: "fruity"),
                Facility(id: UUID(), name: "Re.juve", imageName: "rejuve"),
                Facility(id: UUID(), name: "Auntie Anne's", imageName: "auntie"),
                Facility(id: UUID(), name: "Burgreens", imageName: "burgreens"),
                Facility(id: UUID(), name: "Chateraise", imageName: "chateraise"),
                Facility(id: UUID(), name: "Croco by Monseur Spoon", imageName: "croco"),
                Facility(id: UUID(), name: "Dore by Letao", imageName: "dore"),
                Facility(id: UUID(), name: "Gindaco", imageName: "gindaco"),
                Facility(id: UUID(), name: "J.Co", imageName: "jco"),
                Facility(id: UUID(), name: "Kenangan Signature", imageName: "kenangan"),
                Facility(id: UUID(), name: "N.O.B", imageName: "nob"),
                Facility(id: UUID(), name: "Montato", imageName: "montato"),
                Facility(id: UUID(), name: "Paul Le Cafe", imageName: "paul_cafe"),
                Facility(id: UUID(), name: "Salad Stop", imageName: "salad_stop"),
                Facility(id: UUID(), name: "Sinamon", imageName: "sinamon"),
                Facility(id: UUID(), name: "Social Bread", imageName: "social_bread"),
                Facility(id: UUID(), name: "Sour Sally", imageName: "sour_sally"),
                Facility(id: UUID(), name: "Subway", imageName: "subway"),
                Facility(id: UUID(), name: "Tamper", imageName: "tamper"),
                Facility(id: UUID(), name: "The Pancake Co by Dore", imageName: "pancake_co"),
                Facility(id: UUID(), name: "The People's Cafe", imageName: "people_cafe"),
                Facility(id: UUID(), name: "Vivoli Gelato", imageName: "vivoli"),
                Facility(id: UUID(), name: "Bebek Bengil", imageName: "bebek_bengil"),
                Facility(id: UUID(), name: "Brewerkz", imageName: "brewerkz"),
                Facility(id: UUID(), name: "Chakra", imageName: "chakra"),
                Facility(id: UUID(), name: "Chong Qing Hot Pot", imageName: "chong_qing"),
                Facility(id: UUID(), name: "Cutt & Grill", imageName: "cutt_grill"),
                Facility(id: UUID(), name: "D'Cost", imageName: "dcost"),
                Facility(id: UUID(), name: "Fire Prawn", imageName: "fire_prawn"),
                Facility(id: UUID(), name: "Gallura", imageName: "gallura"),
                Facility(id: UUID(), name: "Gion Sushi", imageName: "gion"),
                Facility(id: UUID(), name: "Gubuk Makan Mang Engking", imageName: "mang_engking"),
                Facility(id: UUID(), name: "Hatchi Grill", imageName: "hatchi"),
                Facility(id: UUID(), name: "Han Guksu", imageName: "han_guksu"),
                Facility(id: UUID(), name: "Honu", imageName: "honu"),
                Facility(id: UUID(), name: "Ikkudo Ichi", imageName: "ikkudo"),
                Facility(id: UUID(), name: "Jalarasa", imageName: "jalarasa"),
                Facility(id: UUID(), name: "Jittlada", imageName: "jittlada"),
                Facility(id: UUID(), name: "Katsukita", imageName: "katsukita"),
                Facility(id: UUID(), name: "Kitchenette", imageName: "kitchenette"),
                Facility(id: UUID(), name: "Leko", imageName: "leko"),
                Facility(id: UUID(), name: "Marugame Udon", imageName: "marugame"),
                Facility(id: UUID(), name: "Saigon Delight", imageName: "saigon"),
                Facility(id: UUID(), name: "Sakebiru Izakaya", imageName: "sakbiru"),
                Facility(id: UUID(), name: "Sate Khas Senayan", imageName: "sate_senayan"),
                Facility(id: UUID(), name: "Sushi Tei", imageName: "sutei"),
                Facility(id: UUID(), name: "Villa Capri", imageName: "villa_capri"),
                Facility(id: UUID(), name: "Wee Nam Kee", imageName: "wee_nam"),
                Facility(id: UUID(), name: "Boots", imageName: "boots"),
                Facility(id: UUID(), name: "Guardian", imageName: "guardian")
            ]
        ),

        
        // FacilitiesBuilding 6
        FacilitiesBuilding(
            id: UUID(),
            name: "Sinarmas Land Plaza",
            categories: ["Office"],
            description: "Sinarmas Land Plaza is a prestigious office building at the heart of Green Office Park, known for hosting major corporate tenants and important business operations. With its modern architecture and strategic location, it serves as a landmark for professionals in BSD City.",
            latitude: -6.300326,
            longitude: 106.662839,
            image: "sinarmas_land",
            facilities: [
                Facility(id: UUID(), name: "Restroom", imageName: "restroom"),
                Facility(id: UUID(), name: "Outdoor Park", imageName: "outdoor_park"),
                Facility(id: UUID(), name: "Parking Area", imageName: "parking_area"),
                Facility(id: UUID(), name: "Prasetyamulya University", imageName: "prasmul"),
                Facility(id: UUID(), name: "Sinarmas World Academy", imageName: "sinarmas_academy")
            ]
        ),

            
        // FacilitiesBuilding 7
            FacilitiesBuilding(
            id: UUID(),
            name: "Marketing Office",
            categories: ["Office"],
            description: "The BSD Xperience Center, also known as the Marketing Office, is the hub for Sinarmas Land’s urban development showcase. It's where prospective buyers, investors, and partners come to experience BSD City’s vision through immersive technology and interactive displays.",
            latitude: -6.300326,
            longitude: 106.662839,
            image: "marketing_office",
            facilities: []
            ),
                
        // FacilitiesBuilding 8
        FacilitiesBuilding(
        id: UUID(),
        name: "Grha Unilever",
        categories: ["Office"],
        description: "Grha Unilever is the eco-friendly and stylish headquarters of Unilever Indonesia. It stands out with its sustainable design, lush green open spaces, and employee-first facilities. This building reflects Unilever’s commitment to innovation and sustainability.",
        latitude: -6.300786,
        longitude: 106.649875,
        image: "unilever",
        facilities: []
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
                       "Route B200: Green Office Park 1 Main Entrance to Central Station",
                       "Route B201: Green Office Park 2 Side Entrance to City Center",
                       "Route B202: Green Office Park 3 Main Entrance to Downtown",
                       "Route B203: Green Office Park 1 Back Entrance to Airport",
                       "Route B204: Green Office Park 2 Front Entrance to Mall"
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
                       "Route B205: Green Office Park 1 Main Entrance to Uptown",
                       "Route B206: Green Office Park 3 Front Entrance to Market",
                       "Route B207: Green Office Park 4 Side Entrance to Beach",
                       "Route B208: Green Office Park 5 Back Entrance to Library",
                       "Route B209: Green Office Park 1 Main Entrance to Park"
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
                       "Route B210: Green Office Park 1 Back Entrance to Central Park",
                       "Route B211: Green Office Park 2 Side Entrance to Museum",
                       "Route B212: Green Office Park 3 Front Entrance to Hospital",
                       "Route B213: Green Office Park 4 Main Entrance to Station",
                       "Route B214: Green Office Park 5 Front Entrance to Zoo"
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
                       "Route B215: Green Office Park 3 Side Entrance to Convention Center",
                       "Route B216: Green Office Park 1 Main Entrance to Theater",
                       "Route B217: Green Office Park 2 Side Entrance to Restaurant",
                       "Route B218: Green Office Park 5 Back Entrance to Market Place",
                       "Route B219: Green Office Park 4 Front Entrance to Park"
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
                       "Route B220: Green Office Park 2 Main Entrance to Shopping Mall",
                       "Route B221: Green Office Park 1 Front Entrance to Theater",
                       "Route B222: Green Office Park 3 Side Entrance to Stadium",
                       "Route B223: Green Office Park 4 Back Entrance to Mall",
                       "Route B224: Green Office Park 5 Front Entrance to Airport"
                   ]
               )
           ]
}
