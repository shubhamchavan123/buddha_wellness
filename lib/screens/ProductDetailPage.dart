import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:readmore/readmore.dart';

import '../utils/BaseScreen.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends StatefulWidget {
  final Map<String, dynamic> product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final PageController _pageController = PageController();
  int activeIndex = 0;

  bool isAddedToCart = false;
  int quantity = 1;

  // if you have multiple images per product you can pass them from map
  late List<String> productImages;

  @override
  void initState() {
    super.initState();
    // if your product contains a list of images
    // productImages = List<String>.from(widget.product['images']);
    // else just use its single image
    productImages = [widget.product['image']];
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return BaseScreen(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🖼 Product Image Carousel
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      // PageView with images
                      SizedBox(
                        height: 350,
                        width: double.infinity,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: productImages.length,
                          onPageChanged: (index) {
                            setState(() => activeIndex = index);
                          },
                          itemBuilder: (context, index) {
                            return Image.asset(
                              productImages[index],
                              fit: BoxFit.cover,
                            );
                          },
                        ),
                      ),
                      // Discount Badge Example
                      Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            "20% Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      
              // Page Indicator
              const SizedBox(height: 8),
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: productImages.length,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Colors.orange,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
      
              // Title + Rating + Stock + Price
              // Title + Rating + Stock + Price
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product["title"],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 18),
                        const SizedBox(width: 4),
                        Text("${product["rating"]} (451,444 Ratings)"),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text("In stock",
                              style: TextStyle(color: Colors.green)),
                        )
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Text(
                          product["oldPrice"],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(product["price"],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // 👇 Description
                    // Description
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Description",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 6),
                          Text(
                            product["description"] ?? "No description available.",
                            style: const TextStyle(fontSize: 14, height: 1.4, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
      
                  ],
                ),
              ),
      
              const SizedBox(height: 12),
      
              // 📝 Reviews & feedback section
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text("Reviews & feedback",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const Spacer(),
                          Row(
                            children: const [
                              Icon(Icons.star, color: Colors.orange),
                              SizedBox(width: 5),
                              Text("4.5 out of 5"),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Example text fields for review
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "Write your review here",
                          alignLabelWithHint: true,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 28, vertical: 12),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Publish",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ]),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      
        // Bottom bar with price and add to cart
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product["price"],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(product["oldPrice"],
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough)),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  // Add to Cart / Quantity Stepper
                  isAddedToCart
                      ? SizedBox(
                    height: 50,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (quantity > 1) {
                                setState(() => quantity--);
                              } else {
                                setState(() {
                                  isAddedToCart = false;
                                  quantity = 1;
                                });
                              }
                            },
                            icon: const Icon(Icons.remove),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),
                          Text(
                            quantity.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          IconButton(
                            onPressed: () =>
                                setState(() => quantity++),
                            icon: const Icon(Icons.add),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                          ),
                        ],
                      ),
                    ),
                  )
                      : SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isAddedToCart = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Add to Cart",
                        style:
                        TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Buy Now button
                  SizedBox(
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // TODO: Add buy action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD39841),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 4,
                      ),
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 22,
                      ),
                      label: const Text(
                        "BUY NOW",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// =============================================================================

class ProductDetailScreen2 extends StatefulWidget {
  final Map<String, dynamic> product;

  const ProductDetailScreen2({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailScreen2> createState() => _ProductDetailScreen2State();
}

class _ProductDetailScreen2State extends State<ProductDetailScreen2> {
  final PageController _pageController = PageController();
  int activeIndex = 0;
  late List<String> productImages;

  @override
  void initState() {
    super.initState();
    productImages = [widget.product['image']];
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image Carousel
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                clipBehavior: Clip.hardEdge,
                child: SizedBox(
                  height: 350,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: productImages.length,
                    onPageChanged: (index) => setState(() => activeIndex = index),
                    itemBuilder: (context, index) {
                      return Image.asset(
                        productImages[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ),
            ),

            // Page Indicator
            const SizedBox(height: 8),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: productImages.length,
                effect: const ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Colors.orange,
                  dotColor: Colors.grey,
                ),
              ),
            ),

            // Title & Rating
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product["title"],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  // Row(
                  //   children: [
                  //     const Icon(Icons.star, color: Colors.orange, size: 18),
                  //     const SizedBox(width: 4),
                  //     Text("${product["rating"]}"),
                  //   ],
                  // ),
                  const SizedBox(height: 12),

                  // Description
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    product["description"] ?? "No description available.",
                    style: const TextStyle(fontSize: 14, height: 1.4, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Social Button Widget
Widget _socialButton(IconData icon, Color color) {
  return CircleAvatar(
    radius: 22,
    backgroundColor: color.withOpacity(0.9),
    child: Icon(
      icon,
      color: Colors.white, // ✅ white icon
      size: 28,
    ),
  );
}



class ProductDetailsTable extends StatelessWidget {
  final Map<String, String> details;

  const ProductDetailsTable({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(3), // key column
          1: FlexColumnWidth(5), // value column
        },
        children: details.entries.map((entry) {
          return TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Text(
                  entry.key,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Text(
                  entry.value,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}


// class ProductDetailPage extends StatelessWidget {
//   const ProductDetailPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: Container(
//         padding: const EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text("₹2,996.50",
//                     style: TextStyle(
//                         fontSize: 18, fontWeight: FontWeight.bold)),
//                 Text("₹4,148",
//                     style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.grey,
//                         decoration: TextDecoration.lineThrough)),
//               ],
//             ),
//             ElevatedButton.icon(
//               onPressed: () {},
//               icon: const Icon(Icons.shopping_cart_outlined),
//               label: const Text("BUY NOW"),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orange,
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 28, vertical: 14),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)),
//               ),
//             )
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Image Section
//             Stack(
//               children: [
//                 SizedBox(
//                   height: 350,
//                   child: PageView(
//                     children: [
//                       Image.asset("assets/images/w2.png",
//                           fit: BoxFit.cover),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   top: 40,
//                   left: 10,
//                   child: const BackButton(color: Colors.black),
//                 ),
//                 Positioned(
//                   top: 40,
//                   right: 10,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.white,
//                     child: IconButton(
//                       icon: const Icon(Icons.shopping_cart_outlined),
//                       onPressed: () {},
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 20,
//                   right: 20,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 8, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: Colors.redAccent,
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                     child: const Text("20% Off",
//                         style: TextStyle(color: Colors.white)),
//                   ),
//                 ),
//               ],
//             ),
//
//             // Product Title
//             ListTile(
//               title: const Text("Lorem ipsum dolor sit amet consectetur."),
//               subtitle: Row(
//                 children: const [
//                   Icon(Icons.star, color: Colors.orange, size: 16),
//                   Text(" 4.8 (451,444 Rating)"),
//                 ],
//               ),
//               trailing: Container(
//                 padding:
//                 const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                     color: Colors.green.shade100,
//                     borderRadius: BorderRadius.circular(6)),
//                 child: const Text("In stock",
//                     style: TextStyle(color: Colors.green)),
//               ),
//             ),
//
//             // Quantity
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.remove_circle_outline)),
//                 const Text("1", style: TextStyle(fontSize: 16)),
//                 IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.add_circle_outline)),
//               ],
//             ),
//
//             // Sizes
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Row(
//                 children: [
//                   const Text("Size: 32"),
//                   const Spacer(),
//                   TextButton(
//                     onPressed: () {},
//                     child: const Text("Size Chart"),
//                   )
//                 ],
//               ),
//             ),
//             Wrap(
//               spacing: 10,
//               children: List.generate(6, (index) {
//                 List<int> sizes = [26, 28, 30, 32, 34, 36];
//                 bool isSelected = sizes[index] == 32;
//                 return ChoiceChip(
//                   label: Text("${sizes[index]}"),
//                   selected: isSelected,
//                   selectedColor: Colors.orange.shade100,
//                   onSelected: (_) {},
//                 );
//               }),
//             ),
//
//             // Description
//             const Padding(
//               padding: EdgeInsets.all(12.0),
//               child: Text(
//                 "Discover timeless elegance with the Raymond Men Slim Fit Solid Formal Shirt, perfect for the discerning gentleman. Crafted from pure cotton.",
//                 style: TextStyle(color: Colors.black54),
//               ),
//             ),
//
//             ExpansionTile(
//               title: const Text("Product Details"),
//               children: const [
//                 ListTile(
//                   title: Text("Pack of"),
//                   trailing: Text("1"),
//                 ),
//                 ListTile(
//                   title: Text("Style Code"),
//                   trailing: Text("RMSX12869-B3"),
//                 ),
//                 ListTile(
//                   title: Text("Fit"),
//                   trailing: Text("Slim"),
//                 ),
//                 ListTile(
//                   title: Text("Fabric"),
//                   trailing: Text("Pure Cotton"),
//                 ),
//               ],
//             ),
//
//             ExpansionTile(
//               title: const Text("Size Chart"),
//               children: [
//                 DataTable(columns: const [
//                   DataColumn(label: Text("Size")),
//                   DataColumn(label: Text("Chart")),
//                   DataColumn(label: Text("Brand Size")),
//                   DataColumn(label: Text("Shoulder")),
//                   DataColumn(label: Text("Length")),
//                 ], rows: List.generate(5, (index) {
//                   return const DataRow(cells: [
//                     DataCell(Text("38")),
//                     DataCell(Text("40.94")),
//                     DataCell(Text("XS")),
//                     DataCell(Text("17.52")),
//                     DataCell(Text("26.54")),
//                   ]);
//                 })),
//               ],
//             ),
//
//             // Reviews
//             const Padding(
//               padding: EdgeInsets.all(12.0),
//               child: Text("Reviews & feedback",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [
//                 Icon(Icons.star, color: Colors.orange),
//                 Icon(Icons.star, color: Colors.orange),
//                 Icon(Icons.star, color: Colors.orange),
//                 Icon(Icons.star, color: Colors.orange),
//                 Icon(Icons.star_half, color: Colors.orange),
//                 SizedBox(width: 5),
//                 Text("4.5 out of 5"),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                         labelText: "Name", border: OutlineInputBorder()),
//                   ),
//                   const SizedBox(height: 10),
//                   TextField(
//                     decoration: InputDecoration(
//                         labelText: "Email", border: OutlineInputBorder()),
//                   ),
//                   const SizedBox(height: 10),
//                   TextField(
//                     maxLines: 3,
//                     decoration: InputDecoration(
//                         labelText: "Review", border: OutlineInputBorder()),
//                   ),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.deepPurple),
//                       child: const Text("Publish"))
//                 ],
//               ),
//             ),
//
//             // Similar Products
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Row(
//                 children: [
//                   const Text("Similar Products",
//                       style:
//                       TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                   const Spacer(),
//                   TextButton(onPressed: () {}, child: const Text("View All"))
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 250,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: 160,
//                     margin: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey.shade200),
//                         borderRadius: BorderRadius.circular(12)),
//                     child: Column(
//                       children: [
//                         Image.asset("assets/images/w2.png",
//                             height: 150, fit: BoxFit.cover),
//                         const Text("Lorem ipsum dolor sit amet",
//                             maxLines: 1, overflow: TextOverflow.ellipsis),
//                         const Text("₹2,996.50",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black)),
//                         const Text("₹4,148",
//                             style: TextStyle(
//                                 decoration: TextDecoration.lineThrough,
//                                 color: Colors.grey)),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
