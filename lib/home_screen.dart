import 'package:flutter/material.dart';
import 'package:zomatto/dish_details.dart';
import 'package:zomatto/model/restaurant_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var allRes = [
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Pattukotai Mess",
        cuisine: "Indian",
        isFav: false,
        minimumAmount: 100,
        userRating: 4.3,
        imageUrl: "images/image1.jpeg",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "salt",
                "turmeric",
                "red chile"
              ],
              image: [
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1",
                "https://c8.alamy.com/comp/MBH8E1/japanese-style-crab-soup-MBH8E1.jpg",
              ]),
          Menuitem(
              dishname: "crab soup",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "salt",
                "Grab",
                "red chile"
              ],
              image: [
                "https://c8.alamy.com/comp/MBH8E1/japanese-style-crab-soup-MBH8E1.jpg"
              ]),
          Menuitem(dishname: "Fish Fry", ratings: 4.2, price: 150, ingridient: [
            "salt",
            "fish",
            "oil"
          ], image: [
            "https://png.pngtree.com/png-vector/20231029/ourmid/pngtree-dorado-baked-with-raspberry-marinade-and-brocooli-fish-for-the-christmas-png-image_10353518.png"
          ]),
          Menuitem(
              dishname: "mutton Briyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "salt",
                "turmeric",
                "red chile"
              ],
              image: [
                "https://www.google.com/search?q=mutton+biryani+images+png&sca_esv=94e45fce1d51b060&sca_upv=1&rlz=1C1CHBF_enIN1075IN1075&udm=2&biw=1366&bih=607&ei=WUp7ZujSC8naseMP2daJ-Ac&oq=mutt+images+png&gs_lp=Egxnd3Mtd2l6LXNlcnAiD211dHQgaW1hZ2VzIHBuZyoCCAIyBhAAGAcYHjIGEAAYBxgeMgYQABgHGB5IvzhQ-QRY1RhwAXgAkAEAmAFToAHdBqoBAjEyuAEByAEA-AEBmAIHoALhA8ICChAAGIAEGEMYigXCAgYQABgIGB7CAggQABgHGAgYHsICDRAAGIAEGLEDGEMYigXCAgUQABiABJgDAIgGAZIHATegB-A0&sclient=gws-wiz-serp#vhid=7T1Yl3AvCajNLM&vssid=mosaic"
              ])
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "Geetham",
        cuisine: "Indian",
        isFav: true,
        minimumAmount: 200,
        userRating: 4.5,
        imageUrl: "images/image1.jpeg",
        menu: [
          Menuitem(dishname: "Dosa", ratings: 4.5, price: 50, ingridient: [
            "Dosa is a popular South Indian thin crepe made with fermented rice and lentil batter"
          ], image: [
            "https://www.shutterstock.com/image-photo/homemade-dosa-dhosa-masala-plain-260nw-1597787986.jpg",
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Dosa_and_ghee.jpg/800px-Dosa_and_ghee.jpg"
          ]),
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Spice Garden",
        cuisine: "Chinese",
        isFav: false,
        minimumAmount: 120,
        userRating: 4.0,
        imageUrl: "images/image3.png",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "To a bowl, add yogurt, ginger garlic paste, salt, garam masala, turmeric, lemon juice & red chili powder"
              ],
              image: [
                "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg",
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1"
              ])
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "A2B",
        cuisine: "Healthy",
        isFav: true,
        minimumAmount: 200,
        userRating: 4.8,
        imageUrl: "images/image4.jpeg",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "To a bowl, add yogurt, ginger garlic paste, salt, garam masala, turmeric, lemon juice & red chili powder"
              ],
              image: [
                "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg",
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1"
              ])
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Anjapaar",
        cuisine: "South Indian",
        isFav: false,
        minimumAmount: 300,
        userRating: 4.2,
        imageUrl: "mages/image5.jpeg",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "To a bowl, add yogurt, ginger garlic paste, salt, garam masala, turmeric, lemon juice & red chili powder"
              ],
              image: [
                "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg",
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1"
              ])
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "Thallu vandi",
        cuisine: "Street Food",
        isFav: true,
        minimumAmount: 15,
        userRating: 5,
        imageUrl: "amages/image6.jpeg",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "To a bowl, add yogurt, ginger garlic paste, salt, garam masala, turmeric, lemon juice & red chili powder"
              ],
              image: [
                "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg",
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1"
              ])
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "Kerala mess",
        cuisine: "Kerala",
        isFav: true,
        minimumAmount: 200,
        userRating: 4.4,
        imageUrl: "mages/image7.jpeg",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "To a bowl, add yogurt, ginger garlic paste, salt, garam masala, turmeric, lemon juice & red chili powder"
              ],
              image: [
                "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg",
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1"
              ])
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Seafood Shack",
        cuisine: "Seafood",
        isFav: true,
        minimumAmount: 180,
        userRating: 4.7,
        imageUrl: "amages/image8.jpeg",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "To a bowl, add yogurt, ginger garlic paste, salt, garam masala, turmeric, lemon juice & red chili powder"
              ],
              image: [
                "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg",
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1"
              ])
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Biryani Bazaar",
        cuisine: "Hyderabadi",
        isFav: false,
        minimumAmount: 160,
        userRating: 4.1,
        imageUrl: "9",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "To a bowl, add yogurt, ginger garlic paste, salt, garam masala, turmeric, lemon juice & red chili powder"
              ],
              image: [
                "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg",
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1"
              ])
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "Pattukotai mess",
        cuisine: "Multi cuisine",
        isFav: true,
        minimumAmount: 120,
        userRating: 4.9,
        imageUrl: "10",
        menu: [
          Menuitem(
              dishname: "chicken Biriyani",
              ratings: 4.2,
              price: 150,
              ingridient: [
                "To a bowl, add yogurt, ginger garlic paste, salt, garam masala, turmeric, lemon juice & red chili powder"
              ],
              image: [
                "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg",
                "https://b3067249.smushcdn.com/3067249/wp-content/uploads/2023/03/chicken-Biryani-848x477.jpg?lossy=0&strip=1&webp=1"
              ])
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Mahi Zomato",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(
                255,
                151,
                3,
                11,
              ),
            ),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (ctx, inx) {
          return GestureDetector(
            onTap: () {
              print(allRes[inx].name);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (stx) {
                    return HotelScreen(hotelname: allRes[inx]);
                  },
                ),
              );
            },
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image(
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.low,
                        image: AssetImage(
                          allRes[inx].imageUrl,
                        ),
                      ),
                      //black color gradient
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.black.withOpacity(0.4),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      //heart icon
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: allRes[inx].isFav
                              ? const Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.pinkAccent,
                                )
                              : const Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          allRes[inx].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 4),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Text(
                                allRes[inx].userRating.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                size: 10,
                                Icons.star_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          allRes[inx].cuisine,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color.fromARGB(255, 136, 135, 135)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.circle, size: 8),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          allRes[inx].typeOfFoodOffered.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color.fromARGB(255, 136, 135, 135)),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(Icons.circle, size: 8),
                        const SizedBox(
                          width: 1,
                        ),
                        const Icon(Icons.currency_rupee_rounded, size: 14),
                        const SizedBox(
                          width: 0.1,
                        ),
                        Text(
                          allRes[inx].minimumAmount.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color.fromARGB(255, 136, 135, 135)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.8,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "40% OFF upto 100",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900]),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemCount: allRes.length,
      ),
    );
  }
}
