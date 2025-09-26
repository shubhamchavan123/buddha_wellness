import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';



import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomeCategoriesScreen extends StatefulWidget {
  const HomeCategoriesScreen({super.key});

  @override
  State<HomeCategoriesScreen> createState() => _HomeCategoriesScreen();
}

class _HomeCategoriesScreen extends State<HomeCategoriesScreen> {
  String selectedCategory = "Trending Now";

  // ✅ Categories list
  final List<String> categories = [
    "Trending Now",
    "Herbal Remedies",
    "Healing & Asceticism",
    "Acupressure & Massage",
    "Meditation & Mindfulness",
    "Daily Health Supplements",
    "Detox & Cleansing",
    "Sleep & Relaxation",
  ];

  // ✅ Category Images Map
  final Map<String, String> categoryImages = {
    "Trending Now": "https://www.shutterstock.com/image-photo/healing-herbs-hessian-bags-mortar-260nw-249194122.jpg",
    "Herbal Remedies": "https://www.news-medical.net/image-handler/picture/2021/8/shutterstock_656977798.jpg",
    "Healing & Asceticism": "https://images.pexels.com/photos/414886/pexels-photo-414886.jpeg",
    "Acupressure & Massage": "https://images.pexels.com/photos/3028995/pexels-photo-3028995.jpeg",
    "Meditation & Mindfulness": "https://cdn.pixabay.com/photo/2021/10/04/11/51/tea-6680090_640.jpg",
    "Daily Health Supplements": "https://cdn.pixabay.com/photo/2016/04/01/10/51/drug-1300054_640.png",
    "Detox & Cleansing": "https://cdn.pixabay.com/photo/2017/02/10/13/05/pharmacy-2055130_640.jpg",
    "Sleep & Relaxation": "https://images.pexels.com/photos/3028998/pexels-photo-3028998.jpeg",
  };




// Spotlight + Stores (Network Images)
  final List<Map<String, String>> spotlightItems = [
    {
      "title": "Herbal",
      "image": "https://cdn.pixabay.com/photo/2016/04/01/10/18/alder-1299848_640.png"
    },
    {
      "title": "Sleep & Relaxation",
      "image": "https://cdn.pixabay.com/photo/2017/01/31/00/26/bark-2022574_640.png"
    },
    {
      "title": "Detox",
      "image": "https://cdn.pixabay.com/photo/2017/01/31/08/20/branch-2023190_640.png"
    },
    {
      "title": "Daily Health",
      "image": "https://cdn.pixabay.com/photo/2017/01/31/00/28/biennial-2022582_640.png"
    },
    {
      "title": "Healing",
      "image": "https://cdn.pixabay.com/photo/2017/02/10/13/05/pharmacy-2055130_640.jpg"
    },
    {
      "title": "Cleansing",
      "image": "https://cdn.pixabay.com/photo/2021/10/04/11/51/tea-6680090_640.jpg"
    },
    {
      "title": "Mindfulness",
      "image": "https://cdn.pixabay.com/photo/2016/04/01/10/51/drug-1300054_640.png"
    },
    {
      "title": "Healing",
      "image": "https://cdn.pixabay.com/photo/2017/01/31/00/37/branch-2022641_640.png"
    },
    {
      "title": "Navratri Store",
      "image": "https://cdn.pixabay.com/photo/2017/03/02/23/46/dandelion-2112780_640.jpg"
    },
    {
      "title": "Acupressure",
      "image": "https://cdn.pixabay.com/photo/2021/02/03/20/16/marijuana-5979246_640.jpg"
    },
    {
      "title": "Remedies",
      "image": "https://cdn.pixabay.com/photo/2016/04/01/10/18/floral-1299847_640.png"
    },
    {
      "title": "Daily Health",
      "image": "https://cdn.pixabay.com/photo/2019/12/04/08/16/elderflower-4672039_640.jpg"
    },

  ];

  final List<Map<String, String>> trendingStores = [
    {
      "title": "Acupressure",
      "image": "https://cdn.pixabay.com/photo/2021/02/03/20/16/marijuana-5979246_640.jpg"
    },
    {
      "title": "Remedies",
      "image": "https://cdn.pixabay.com/photo/2016/04/01/10/18/floral-1299847_640.png"
    },
    {
      "title": "Daily Health",
      "image": "https://cdn.pixabay.com/photo/2019/12/04/08/16/elderflower-4672039_640.jpg"
    },
  ];

// Category-wise items
  final Map<String, List<Map<String, String>>> categoryItems = {
    "Herbal Remedies": [
      {"title": "Pain Relief Oil", "image": "https://www.shutterstock.com/image-photo/healing-herbs-hessian-bags-mortar-260nw-249194122.jpg"},
      {"title": "Immunity Booster Capsules", "image": "https://media.istockphoto.com/id/153537125/photo/herbal-medicine-and-herbs.jpg?s=612x612&w=0&k=20&c=OB4yJPdNms_LWF7KgJKjmD5N6yr79SIiEudXWK8qgbc="},
      {"title": "Digestion Care Powder", "image": "https://media.gettyimages.com/id/173586199/photo/medical-herbs.jpg?s=612x612&w=gi&k=20&c=T5Tmz7QujienTrbFmI2PqV8WTKFQlgxVNnT3tgNR6sg="},
    ],
    "Healing & Asceticism": [
      {"title": "Stress Relief Herbal Tea", "image": "https://cdn.pixabay.com/photo/2017/02/10/13/05/pharmacy-2055130_640.jpg"},
      {"title": "Joint & Muscle Care Balm", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk0UZUGwc1zT1pP9CMo9AKC5qF0LRJ0M_h5IvOXlng7aifhtBPUq0X1TIz4DE6_ETtaNU&usqp=CAU"},
    ],
    "Acupressure & Massage": [
      {"title": "Pain Relief Acupressure Mat", "image": "https://cdn.pixabay.com/photo/2017/07/26/22/09/licorice-2543337_640.jpg"},
      {"title": "Relaxing Massage Oil", "image": "https://cdn.pixabay.com/photo/2021/02/18/04/03/marijuana-6026030_640.jpg"},
    ],
    "Meditation & Mindfulness": [
      {"title": "Meditation Cushion", "image": "https://cdn.pixabay.com/photo/2015/11/07/17/00/cannabis-1032119_640.png"},
      {"title": "Mindfulness Music CD", "image": "https://cdn.pixabay.com/photo/2021/02/03/20/16/marijuana-5979246_640.jpg"},
    ],
    "Daily Health Supplements": [
      {"title": "Vitamin C Tablets", "image": "https://cdn.pixabay.com/photo/2024/03/19/22/18/ai-generated-8644274_640.jpg"},
      {"title": "Herbal Multivitamins", "image": "https://cdn.pixabay.com/photo/2016/04/01/10/06/bay-1299772_640.png"},
    ],
    "Detox & Cleansing": [
      {"title": "Liver Detox Capsules", "image": "https://cdn.pixabay.com/photo/2021/07/18/12/05/cloves-6475374_640.jpg"},
      {"title": "Full Body Detox Tea", "image": "https://cdn.pixabay.com/photo/2017/01/31/00/26/branch-2022575_640.png"},
    ],
    "Sleep & Relaxation": [
      {"title": "Sleep Aid Powder", "image": "https://cdn.pixabay.com/photo/2019/12/04/08/16/elderflower-4672039_640.jpg"},
      {"title": "Herbal Multivitamins", "image": "https://cdn.pixabay.com/photo/2016/04/01/10/06/bay-1299772_640.png"},
    ],

  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      // backgroundColor: const Color(0xfffdf6ef),
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Categories",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(Icons.favorite_border, color: Colors.black),
          SizedBox(width: 12),
          Icon(Icons.shopping_bag_outlined, color: Colors.black),
          SizedBox(width: 12),
        ],
      ),

      body: Row(
        children: [

          Container(
            width: 100,
            margin: const EdgeInsets.only(left: 8), // 🔹 Left margin
            decoration: BoxDecoration(
              color:  Colors.white, // 🔹 Light orange background
              // color: const Color(0xFFFFF3E0), // 🔹 Light orange background
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                String category = categories[index];
                bool isSelected = selectedCategory == category;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                  child:
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.orange.shade100 : Colors.transparent,

                      borderRadius: BorderRadius.circular(12),
                      border: isSelected
                          ?  Border(
                        left: BorderSide(
                          color: Colors.orange.shade800, // 🔹 Left strip color
                          width: 4, // 🔹 Strip width
                        ),
                      )
                          : null,
                      boxShadow: isSelected
                          ? [const BoxShadow(color: Colors.black12, blurRadius: 4)]
                          : [],
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: isSelected ? 30 : 25, // 🔹 Zoom effect
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                            categoryImages[category]!,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          category,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.w700,
                            color: isSelected ? Colors.orange.shade800 : Colors.black87, // 🔹 Highlight color
                          ),
                        ),

                      ],
                    ),
                  )
                  ,
                );
              },
            ),
          ),

          // Right Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 1.0,right: 1,bottom: 1),
              child: selectedCategory == "Trending Now"
                  ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Spotlight
                    const Text("In The Spotlight",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: spotlightItems.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        final item = spotlightItems[index];
                        return Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                              NetworkImage(item["image"]!),
                            ),
                            const SizedBox(height: 6),

                            AutoSizeText(
                              item["title"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
                              maxLines: 1,         // keeps it in one line
                              minFontSize: 8,      // smallest font it can shrink to
                              overflow: TextOverflow.ellipsis, // adds "..." if too long
                            ),



                        ],
                        );
                      },
                    ),

                    const SizedBox(height: 20),

                    // Trending Stores
                    const Text("Trending Stores",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: trendingStores.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        final item = trendingStores[index];
                        return Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                              NetworkImage(item["image"]!),
                            ),
                            const SizedBox(height: 6),
                            AutoSizeText(
                              item["title"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
                              maxLines: 1,
                              minFontSize: 8,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              )
                  : GridView.builder(
                itemCount: categoryItems[selectedCategory]?.length ?? 0,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final item = categoryItems[selectedCategory]![index];
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(item["image"]!),
                      ),
                      const SizedBox(height: 6),
                      AutoSizeText(
                        item["title"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
                        maxLines: 1,
                        minFontSize: 8,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// class CategoriesScreen extends StatefulWidget {
//   const CategoriesScreen({super.key});
//
//   @override
//   State<CategoriesScreen> createState() => _CategoriesScreenState();
// }
//
// class _CategoriesScreenState extends State<CategoriesScreen> {
//   String selectedCategory = "Trending Now";
//
//   final List<String> categories = [
//     "Trending Now",
//     "Men's Wear",
//     "Women's Wear",
//     "Kids Wear",
//     "Footwear",
//     "Beauty & Grooming",
//     "Home & Living",
//   ];
//
//   // Spotlight + Stores
//   final List<Map<String, String>> spotlightItems = [
//     {"title": "New On Myntra", "image": "assets/new.png"},
//     {"title": "Monsoon Magic", "image": "assets/monsoon.png"},
//     {"title": "The Edit", "image": "assets/edit.png"},
//     {"title": "Trendnxt", "image": "assets/trend.png"},
//     {"title": "Autumn Winter", "image": "assets/autumn.png"},
//     {"title": "Ganesh Chaturthi Store", "image": "assets/ganesh.png"},
//     {"title": "Onam Store", "image": "assets/onam.png"},
//     {"title": "The Pujo Store", "image": "assets/pujo.png"},
//     {"title": "Navratri Store", "image": "assets/navratri.png"},
//   ];
//
//   final List<Map<String, String>> trendingStores = [
//     {"title": "Myntra Unique", "image": "assets/unique.png"},
//     {"title": "Rising Stars", "image": "assets/rising.png"},
//     {"title": "Luxe", "image": "assets/luxe.png"},
//     {"title": "Picture", "image": "assets/picture.png"},
//     {"title": "Rising Stars Beauty", "image": "assets/beauty.png"},
//     {"title": "FWD", "image": "assets/fwd.png"},
//   ];
//
//   // Category-wise items
//   final Map<String, List<Map<String, String>>> categoryItems = {
//     "Men's Wear": [
//       {"title": "T-Shirts", "image": "assets/mens_tshirt.png"},
//       {"title": "Shirts", "image": "assets/mens_shirt.png"},
//       {"title": "Jeans", "image": "assets/mens_jeans.png"},
//       {"title": "Jackets", "image": "assets/mens_jacket.png"},
//     ],
//     "Women's Wear": [
//       {"title": "Saree", "image": "assets/saree.png"},
//       {"title": "Dresses", "image": "assets/dress.png"},
//       {"title": "Kurtis", "image": "assets/kurti.png"},
//       {"title": "Tops", "image": "assets/top.png"},
//     ],
//     "Kids Wear": [
//       {"title": "T-Shirts", "image": "assets/kids_tshirt.png"},
//       {"title": "Shorts", "image": "assets/kids_shorts.png"},
//       {"title": "Frocks", "image": "assets/kids_frock.png"},
//     ],
//     "Footwear": [
//       {"title": "Heels", "image": "assets/heels.png"},
//       {"title": "Shoes", "image": "assets/shoes.png"},
//       {"title": "Sandals", "image": "assets/sandals.png"},
//     ],
//     "Beauty & Grooming": [
//       {"title": "Lipstick", "image": "assets/lipstick.png"},
//       {"title": "Perfume", "image": "assets/perfume.png"},
//       {"title": "Shaving Kit", "image": "assets/shaving.png"},
//     ],
//     "Home & Living": [
//       {"title": "Furniture", "image": "assets/furniture.png"},
//       {"title": "Decor", "image": "assets/decor.png"},
//       {"title": "Kitchen", "image": "assets/kitchen.png"},
//     ],
//   };
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xfffdf6ef),
//       appBar: AppBar(
//         backgroundColor: const Color(0xfffdf6ef),
//         elevation: 0,
//         title: const Text("Categories", style: TextStyle(color: Colors.black)),
//         centerTitle: false,
//         leading: const Icon(Icons.arrow_back, color: Colors.black),
//         actions: const [
//           Icon(Icons.favorite_border, color: Colors.black),
//           SizedBox(width: 12),
//           Icon(Icons.shopping_bag_outlined, color: Colors.black),
//           SizedBox(width: 12),
//         ],
//       ),
//       body: Row(
//         children: [
//           // Sidebar
//           Container(
//             width: 100,
//             color: Colors.grey.shade100,
//             child: ListView.builder(
//               itemCount: categories.length,
//               itemBuilder: (context, index) {
//                 String category = categories[index];
//                 bool isSelected = selectedCategory == category;
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedCategory = category;
//                     });
//                   },
//                   child: Container(
//                     margin: const EdgeInsets.symmetric(vertical: 8),
//                     padding: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.white : Colors.grey.shade100,
//                       borderRadius: BorderRadius.circular(12),
//                       boxShadow: isSelected
//                           ? [BoxShadow(color: Colors.black12, blurRadius: 4)]
//                           : [],
//                     ),
//                     child: Column(
//                       children: [
//                         CircleAvatar(
//                           radius: 25,
//                           backgroundColor: Colors.white,
//                           child: Icon(Icons.image, size: 30, color: Colors.grey),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           category,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight:
//                             isSelected ? FontWeight.bold : FontWeight.normal,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//
//           // Right Content
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: selectedCategory == "Trending Now"
//                   ? SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Spotlight
//                     const Text("In The Spotlight",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold)),
//                     const SizedBox(height: 12),
//                     GridView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: spotlightItems.length,
//                       gridDelegate:
//                       const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3,
//                         crossAxisSpacing: 12,
//                         mainAxisSpacing: 12,
//                         childAspectRatio: 0.8,
//                       ),
//                       itemBuilder: (context, index) {
//                         final item = spotlightItems[index];
//                         return Column(
//                           children: [
//                             CircleAvatar(
//                               radius: 40,
//                               backgroundColor: Colors.grey.shade200,
//                               child: Icon(Icons.image,
//                                   size: 40, color: Colors.black54),
//                             ),
//                             const SizedBox(height: 6),
//                             Text(item["title"]!,
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(fontSize: 12)),
//                           ],
//                         );
//                       },
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     // Trending Stores
//                     const Text("Trending Stores",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold)),
//                     const SizedBox(height: 12),
//                     GridView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: trendingStores.length,
//                       gridDelegate:
//                       const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3,
//                         crossAxisSpacing: 12,
//                         mainAxisSpacing: 12,
//                         childAspectRatio: 0.8,
//                       ),
//                       itemBuilder: (context, index) {
//                         final item = trendingStores[index];
//                         return Column(
//                           children: [
//                             CircleAvatar(
//                               radius: 40,
//                               backgroundColor: Colors.grey.shade200,
//                               child: Icon(Icons.image,
//                                   size: 40, color: Colors.black54),
//                             ),
//                             const SizedBox(height: 6),
//                             Text(item["title"]!,
//                                 textAlign: TextAlign.center,
//                                 style: const TextStyle(fontSize: 12)),
//                           ],
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               )
//                   : GridView.builder(
//                 itemCount: categoryItems[selectedCategory]?.length ?? 0,
//                 gridDelegate:
//                 const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                   crossAxisSpacing: 12,
//                   mainAxisSpacing: 12,
//                   childAspectRatio: 0.8,
//                 ),
//                 itemBuilder: (context, index) {
//                   final item =
//                   categoryItems[selectedCategory]![index];
//                   return Column(
//                     children: [
//                       CircleAvatar(
//                         radius: 40,
//                         backgroundColor: Colors.grey.shade200,
//                         child: Icon(Icons.image,
//                             size: 40, color: Colors.black54),
//                       ),
//                       const SizedBox(height: 6),
//                       Text(item["title"]!,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(fontSize: 12)),
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


/// Side Menu Item
class _SideMenuItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final bool selected;

  const _SideMenuItem(this.title, this.imagePath, {this.selected = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: selected ? Colors.white : Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 24,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: selected ? FontWeight.bold : FontWeight.w700,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

/// Section Title
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

/// Grid for circular icons + text
class _CircleGrid extends StatelessWidget {
  final List<Map<String, String>> items;

  const _CircleGrid({required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.8,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(items[index]["image"]!),
              radius: 40,
            ),
            const SizedBox(height: 5),
            Text(
              items[index]["title"]!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w900),
            ),
          ],
        );
      },
    );
  }
}
