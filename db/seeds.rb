# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.create(model: "Corolla", brand: "Toyota", description: "Built for comfort and speed.", year: 2023, image_url: "https://cdn.motor1.com/images/mgl/Nrql9/575:0:3469:2604/toyota-corolla-gr-s-2022.webp", user_id: 1)
Car.create(model: "Civic", brand: "Honda", description: "Excellent passenger space and a refined design.", year: 2022, image_url: "https://quatrorodas.abril.com.br/wp-content/uploads/2022/04/honda-civic-seda-e1650568274124.jpg?quality=70&strip=info&w=1280&h=720&crop=1", user_id: 1)
Car.create(model: "Mustang", brand: "Ford", description: "Brilliant sports car and affordable performance.", year: 2019, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/2019_Ford_Mustang_GT_5.0_facelift.jpg/1200px-2019_Ford_Mustang_GT_5.0_facelift.jpg", user_id: 1)
Car.create(model: "Accord", brand: "Honda", description: "Sporty and agile driving experience.", year: 2021, image_url: "https://revistacarro.com.br/wp-content/uploads/2021/09/Honda-Accord-Hibrido-2021_3.jpg", user_id: 1)
Car.create(model: "Elantra", brand: "Hyundai", description: "High fuel economy and impressive technology.", year: 2023, image_url: "https://www.karvi.com.br/blog/wp-content/uploads/2023/03/2024-hyundai-avante-south-korea.jpg", user_id: 1)
Car.create(model: "Cruze", brand: "Chevrolet", description: "Turbocharged diesel engine.", year: 2028, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/2017_Chevrolet_Cruze_LT_front_5.26.18.jpg/1200px-2017_Chevrolet_Cruze_LT_front_5.26.18.jpg", user_id: 2)
Car.create(model: "X5", brand: "BMW", description: "Expansive cargo space, comfortable interiors and plenty of towing capacity.", year: 2023, image_url: "https://hips.hearstapps.com/hmg-prod/images/2024-bmw-x5-107-1675791495.jpg?crop=0.682xw:0.765xh;0.218xw,0.235xh&resize=640:*", user_id: 2)
Car.create(model: "911", brand: "Porsche", description: "Timeless design, contemporary interpretation.", year: 2017, image_url: "https://www.topgear.com/sites/default/files/2021/11/PCGB21_1360_fine.jpg", user_id: 2)
Car.create(model: "Urus", brand: "Lamborghini", description: "All about a performance mindset that brings together fun-to-drive and astounding vehicle.", year: 2023, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Lamborghini_Urus_19.09.20_JM_%282%29_%28cropped%29.jpg/1200px-Lamborghini_Urus_19.09.20_JM_%282%29_%28cropped%29.jpg", user_id: 2)
Car.create(model: "C180", brand: "Mercedes-Benz", description: "Compact executive car with comfy seating.", year: 2023, image_url: "https://s2.glbimg.com/B26LUYEqZcezgVFYLYO_maYBi0E=/0x0:620x400/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_cf9d035bf26b4646b105bd958f32089d/internal_photos/bs/2020/L/B/3c87PRQmOchcONC6YD2A/2016-07-23-c180-2016.png", user_id: 2)
