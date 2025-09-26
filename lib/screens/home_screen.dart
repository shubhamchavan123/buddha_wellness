import 'package:auto_size_text/auto_size_text.dart';
import 'package:buddha_wellness/screens/NotificationsScreen.dart';
import 'package:buddha_wellness/screens/serch_bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/amiri_text_widget.dart';
import 'CartScreen.dart';
import 'CategoriesScreen.dart';
import 'ProductDetailPage.dart';
// home_screen.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:video_player/video_player.dart';

import 'category_list.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.asset("assets/videos/ad_video.mp4")
    _controller = VideoPlayerController.asset("assets/videos/ad_video.mp4")
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true); // ✅ loop the video
        _controller.play();           // ✅ auto-play
        _isPlaying = true;
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlay() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  final List<String> banners = [
    "assets/images/banner1.png",
    "assets/images/banner2.png",
    "assets/images/Ashwagandha.png",
  ];
  /// Ayurvedic
  final List<Map<String, dynamic>> products = [
    {
      "image": "assets/images/Ashwagandha.png",
      "title": "Ashwagandha",
      "price": "₹99.00",
      "oldPrice": "₹4,148.00",
      "rating": "4.8",
      "description":
      "Ashwagandha is a powerful adaptogenic herb used in Ayurvedic medicine. "
          "It helps the body manage stress, boost energy levels, and improve concentration. "
          "Rich in antioxidants, it supports immune health and promotes overall vitality. "
          "Regular use may improve sleep quality and reduce anxiety. "
          "An ideal natural supplement for maintaining strength and stamina."
    },
    {
      "image": "assets/images/Sandalwoodpaste.png",
      "title": "Sandalwood Paste",
      "price": "₹199.00",
      "oldPrice": "₹4,148.00",
      "rating": "4.8",
      "description":
      "This natural sandalwood paste is made from pure sandalwood for radiant skin. "
          "It cools, soothes, and refreshes your skin naturally. "
          "Known for its anti-inflammatory properties, it reduces acne and blemishes. "
          "The calming aroma relaxes the senses and refreshes the mind. "
          "Perfect for daily skincare or special beauty rituals."
    },
    {
      "image": "assets/images/Aloevera.png",
      "title": "Aloe Vera",
      "price": "₹199.00",
      "oldPrice": "₹4,148.00",
      "rating": "4.8",
      "description":
      "Aloe vera gel is a natural moisturizer rich in vitamins and minerals. "
          "It hydrates and nourishes the skin while soothing irritation. "
          "Promotes faster healing of sunburns and minor cuts. "
          "Adds shine and strength to hair when used as a conditioner. "
          "An essential plant-based product for daily skin and hair care."
    },
    {
      "image": "assets/images/Shatavari.png",
      "title": "Shatavari",
      "price": "₹199.00",
      "oldPrice": "₹4,148.00",
      "rating": "4.8",
      "description":
      "Shatavari is a traditional Ayurvedic herb known for women’s wellness. "
          "It supports hormonal balance and boosts immunity. "
          "Helps improve digestion and vitality naturally. "
          "Acts as a natural rejuvenator for overall health. "
          "Trusted for centuries for its adaptogenic properties."
    },
  ];
  /// Healing & Asceticism
  final List<Map<String, dynamic>> products2 = [
    {
      "image": "assets/images/BuddhistHealingTraditions.png",
      "title": "Buddhist Healing Traditions",

      "description":
      "Explores ancient Buddhist approaches to healing and wellbeing. "
          "Covers the integration of mindfulness, compassion, and meditation in health practices. "
          "Shows how rituals, chants, and herbal remedies are used for spiritual and physical balance. "
          "Highlights community healing ceremonies and their role in mental peace. "
          "Provides guidance on applying these teachings to modern life for holistic wellness."
    },
    {
      "image": "assets/images/DailyPractices.png",
      "title": "Daily Practices for Discipline & Self-Control",

      "description":
      "Outlines simple daily routines to cultivate self-discipline and inner strength. "
          "Includes breathing techniques, mindful eating, and ethical reflections. "
          "Draws from ascetic traditions to build resilience against distractions. "
          "Helps create a structured lifestyle that supports spiritual growth. "
          "Encourages small, consistent actions for long-term self-mastery."
    },
    {
      "image": "assets/images/Meditative.png",
      "title": "Meditative Healing Exercises",

      "description":
      "Focuses on meditation as a tool for emotional and physical healing. "
          "Presents step-by-step practices combining breathwork and visualization. "
          "Helps reduce anxiety, improve concentration, and boost immunity. "
          "Teaches self-healing through loving-kindness and body-scan techniques. "
          "A practical guide to restoring balance in everyday life."
    },
    {
      "image": "assets/images/Holistic.png",
      "title": "Holistic Lifestyle Rituals",

      "description":
      "Introduces rituals from monastic life that support body-mind harmony. "
          "Includes sunrise prayers, mindful walking, and evening reflections. "
          "Encourages moderation, gratitude, and conscious consumption. "
          "Blends traditional ascetic practices with modern living. "
          "Designed to create a calm, centered, and purposeful day."
    },
  ];
  /// Accupressure
  final List<Map<String, dynamic>> products3 = [
    {
      "image": "assets/images/PressurePoints.png",
      "title": "Pressure Points for Headaches Relief",
      "description":
      "A detailed chart showing key acupressure points on the head, neck, "
          "and hands to relieve headaches and migraines naturally. "
          "Includes step-by-step pressing guides and safety tips "
          "to ease tension and improve blood flow."
    },
    {
      "image": "assets/images/FootReflexology.png",
      "title": "Foot Reflexology Chart",
      "description":
      "A comprehensive foot reflexology map highlighting zones linked "
          "to major organs and body systems. Learn how to stimulate these points "
          "to support digestion, circulation, and stress relief. "
          "Perfect for beginners and wellness practitioners alike."
    },
    {
      "image": "assets/images/MarmaPointsChart.png",
      "title": "108 Marma Points Chart",
      "description":
      "Traditional Ayurvedic marma chart illustrating all 108 vital energy points "
          "across the human body. Used for healing, balancing prana and "
          "enhancing vitality. Includes clear markings for easy practice "
          "and therapeutic application."
    },
    {
      "image": "assets/images/EarSeeds.png",
      "title": "EarSeeds",
      "description":
      "An easy guide to auricular acupressure using ear seeds. "
          "Shows reflex points on the ear to address pain, cravings, "
          "anxiety and sleep issues. Step-by-step instructions make "
          "this a simple yet powerful self-care tool."
    },
  ];
  /// Meditation
  final List<Map<String, dynamic>> products4 = [
    {
      "image": "assets/images/MindfulnessMeditation.png",
      "title": "Mindfulness Meditation",
      "description":
      "A beginner-friendly guide to observing thoughts, emotions and sensations "
          "without judgment. Builds focus, reduces stress and enhances emotional "
          "balance. Ideal for daily practice to bring calm awareness into life."
    },
    {
      "image": "assets/images/LovingKindness.png",
      "title": "Loving-Kindness Meditation (Metta)",
      "description":
      "Teaches the practice of sending compassion and goodwill to oneself and others. "
          "Reduces anger, improves empathy and cultivates inner peace. "
          "Step-by-step visualizations make it easy to follow."
    },
    {
      "image": "assets/images/Transcendental.png",
      "title": "Transcendental Meditation",
      "description":
      "A mantra-based meditation technique for deep relaxation and expanded awareness. "
          "Practiced twice a day for mental clarity, creativity and stress relief. "
          "Includes tips on choosing a mantra and setting up a routine."
    },
    {
      "image": "assets/images/BodyScan.png",
      "title": "Body-Scan Meditation",
      "description":
      "Guides you through a systematic awareness of the body from head to toe. "
          "Releases tension, improves sleep and strengthens mind-body connection. "
          "Perfect for winding down after a busy day."
    },
  ];

  /// Buddha Bowl
  final List<Map<String, dynamic>> products5 = [
    {
      "image": "assets/images/BuddhaBowl1.png",
      "title": "Classic Buddha Bowl",
      "description":
      "A nourishing mix of whole grains, colorful veggies, and plant-based proteins. "
          "Designed to give a balanced meal packed with fiber and micronutrients. "
          "Perfect for lunch or dinner with endless topping options. "
          "Helps in maintaining energy and supporting healthy digestion."
    },
    {
      "image": "assets/images/BuddhaBowl2.png",
      "title": "Detox Green Buddha Bowl",
      "description":
      "A vibrant bowl rich in leafy greens, sprouts, and citrus dressing. "
          "Boosts immunity, aids detoxification, and refreshes the body naturally. "
          "Ideal for light meals or post-workout recovery. "
          "A wholesome choice for cleansing and rejuvenation."
    },
    {
      "image": "assets/images/BuddhaBowl3.png",
      "title": "Protein Power Buddha Bowl",
      "description":
      "Packed with quinoa, chickpeas, tofu, and seeds for a high-protein punch. "
          "Supports muscle recovery and satiety while keeping it plant-based. "
          "Balanced with fresh veggies and a zesty dressing. "
          "Perfect for fitness enthusiasts and busy professionals."
    },
    {
      "image": "assets/images/BuddhaBowl4.png",
      "title": "Mediterranean Buddha Bowl",
      "description":
      "Combines hummus, olives, roasted veggies, and whole grains for a Mediterranean twist. "
          "Rich in healthy fats and antioxidants for heart health. "
          "Brings a flavorful, satisfying meal experience. "
          "Great for lunch, dinner, or meal-prep options."
    },
  ];

  ///Peace of Mind
  final List<Map<String, dynamic>> products6 = [
    // 🕊 Peace of Mind section
    {
      "image": "assets/images/PeaceMeditation.png",
      "title": "Morning Peace Meditation",
      "description":
      "A calming guided meditation practice to start your day with clarity and ease. "
          "Combines deep breathing, gentle visualization, and affirmations. "
          "Helps release tension, enhance focus, and bring a positive mindset "
          "to everything you do."
    },
    {
      "image": "assets/images/MindfulBreathing.png",
      "title": "Mindful Breathing Techniques",
      "description":
      "Step-by-step breathing exercises designed to quiet the mind "
          "and reduce stress in just minutes. "
          "Includes simple practices suitable for home, work, or travel. "
          "Builds resilience and emotional balance naturally."
    },
    {
      "image": "assets/images/GratitudeJournal.png",
      "title": "Gratitude Journal Prompts",
      "description":
      "Beautifully curated prompts to nurture gratitude and inner peace. "
          "Encourages daily reflection on positive moments, big or small. "
          "Strengthens emotional wellbeing and rewires the brain for happiness "
          "through consistent practice."
    },
    {
      "image": "assets/images/NatureSounds.png",
      "title": "Nature Sounds for Relaxation",
      "description":
      "A soothing collection of forest, ocean, and rain sounds "
          "to help calm the nervous system and promote better sleep. "
          "Perfect companion for meditation, yoga, or unwinding after a busy day. "
          "Brings the tranquility of nature into your space."
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade50,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    // Logo
                    // Image.asset("assets/images/splash_screen_1.png", height: 40),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // or rectangle depending on your icon
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.1), // shadow color
                            blurRadius: 6, // softness
                            spreadRadius: 1, // spread
                            offset: const Offset(4, 4), // 👉 shadow on right & bottom
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/splash_screen_1.png",
                        height: 40,
                      ),
                    ),

                    const SizedBox(width: 10),


                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SerchBarScreen()),
                          );
                        },
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.search, size: 22, color: Colors.black54),
                              SizedBox(width: 8),
                              Text(
                                "Search...",
                                style: TextStyle(color: Colors.black54, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),
                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined, size: 28, color: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartScreen(), // replace with your Cart screen
                          ),
                        );
                        print("Cart clicked");
                      },
                    ),

                    IconButton(
                      icon: const Icon(Icons.notification_add_outlined, size: 28, color: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationsScreen(), // replace with your Cart screen
                          ),
                        );
                        print("Cart clicked");
                      },
                    ),
                  ],
                ),
              ),

              // Categories
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    _buildCategory("Pain Relief", "assets/images/w1.png"),
                    _buildCategory("Sleep", "assets/images/w2.png"),
                    _buildCategory("Relaxation", "assets/images/w3.png"),
                    _buildCategory("Detox", "assets/images/w1.png"),
                    _buildCategory("Cold", "assets/images/w2.png"),
                    _buildCategory("Hair Care", "assets/images/w3.png"),
                    _buildCategory("Skin Glow", "assets/images/w1.png"),
                    _buildCategory("Muscle Care", "assets/images/w2.png"),
                  ],
                ),
              ),

              // Banner Carousel
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: SizedBox(
                    height: 180,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 180,
                        autoPlay: true,
                        viewportFraction: 0.9,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                      ),
                      items: banners.map((img) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              img,
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
              ),

              const SizedBox(height: 15),

              // Recently Viewed
              _buildSectionTitle("Ayurveda Medicine",context, HomeCategoriesScreen()),
              _buildProductList(),

              const SizedBox(height: 10),

              // Explore Fresh Styles
              _buildSectionTitle("Healing & Asceticism",context, HomeCategoriesScreen()),
              _buildProductList2(),

              const SizedBox(height: 15),


              // Video Ad Section
              // Container(
              //   margin: const EdgeInsets.symmetric(horizontal: 15),
              //   width: double.infinity,
              //   height: MediaQuery.of(context).size.width * 0.5,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     color: Colors.black,
              //   ),
              //   clipBehavior: Clip.antiAlias,
              //   child: Stack(
              //     alignment: Alignment.center,
              //     children: [
              //       _controller.value.isInitialized
              //           ? AspectRatio(
              //         aspectRatio: _controller.value.aspectRatio,
              //         child: VideoPlayer(_controller),
              //       )
              //           : const Center(child: CircularProgressIndicator()),
              //       GestureDetector(
              //         onTap: _togglePlay,
              //         child: Icon(
              //           _isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
              //           size: 60,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              alignment: Alignment.center,
              children: [
                _controller.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                    : const Center(child: CircularProgressIndicator()),
                GestureDetector(
                  onTap: _togglePlay,
                  child: Icon(
                    _isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                    size: 60,
                    color: Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
              const SizedBox(height: 15),

              /// Accupressure
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  Text(
                    //   "Flash Deals",
                    //     style:
                    //     TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // ),
                    AutoSizeText(
                      "Accupressure",
                      style: GoogleFonts.amiri(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 2,             // how many lines max
                      overflow: TextOverflow.ellipsis, // optional
                      minFontSize: 12,         // smallest it will shrink to
                    ),


                  ],
                ),
              ),
              _buildProductList3(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  Text(
                    //   "Flash Deals",
                    //     style:
                    //     TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // ),
                    AutoSizeText(
                      "Meditation",
                      style: GoogleFonts.amiri(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                      maxLines: 2,             // how many lines max
                      overflow: TextOverflow.ellipsis, // optional
                      minFontSize: 12,         // smallest it will shrink to
                    ),


                  ],
                ),
              ),
              _buildProductList4(),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  Text(
                    //   "Flash Deals",
                    //     style:
                    //     TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // ),
                    AutoSizeText(
                      "Buddha Bowl",
                      style: GoogleFonts.amiri(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 2,             // how many lines max
                      overflow: TextOverflow.ellipsis, // optional
                      minFontSize: 12,         // smallest it will shrink to
                    ),


                  ],
                ),
              ),
              _buildProductList5(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  Text(
                    //   "Flash Deals",
                    //     style:
                    //     TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // ),
                    AutoSizeText(
                      "Peace of Mind",
                      style: GoogleFonts.amiri(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 2,             // how many lines max
                      overflow: TextOverflow.ellipsis, // optional
                      minFontSize: 12,         // smallest it will shrink to
                    ),


                  ],
                ),
              ),
              _buildProductList6(),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  Text(
                    //   "Flash Deals",
                    //     style:
                    //     TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // ),
                    AutoSizeText(
                      "Extra Features",
                      style: GoogleFonts.amiri(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      maxLines: 2,             // how many lines max
                      overflow: TextOverflow.ellipsis, // optional
                      minFontSize: 12,         // smallest it will shrink to
                    ),


                  ],
                ),
              ),
              _buildProductList2(),
              const SizedBox(height: 20),
              // Explore More
          Center(
            child: Text(
              "Explore more",
              style: GoogleFonts.allura(
                fontSize: 28,               // adjust as per design
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2A2A72), // bluish shade from your screenshot
              ),
              textAlign: TextAlign.center,
            ),
          ),


              // Bottom Banner
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.shade50,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Left Side: Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          "assets/images/home_img2.png", // replace with your image path
                          width: 160,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 20),

                      // Right Side: Text + Button
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          AutoSizeText(
                          "“Explore Ayurveda Medicine & Ascetic Practices\nEmbrace Natural Healing and Limitless Wellbeing”",
                          style: GoogleFonts.amiri(     // 👈 Amiri font here
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.4,
                          ),
                          maxLines: 5,             // limit lines
                          minFontSize: 12,         // shrink until at least 12px
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                        ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo.shade900, // dark blue
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 28,
                                  vertical: 12,
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Connect Now",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Row(
                //   children: [
                //     Image.asset("assets/images/home_img.png", height: 100),
                //     const SizedBox(width: 15),
                //     Expanded(
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           const Text(
                //             "Start Your Online Business & Grow with Limitless Opportunities",
                //             style: TextStyle(fontWeight: FontWeight.bold),
                //           ),
                //           const SizedBox(height: 10),
                //           ElevatedButton(
                //             onPressed: () {},
                //             style: ElevatedButton.styleFrom(
                //               backgroundColor: Colors.indigo,
                //               shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(30),
                //               ),
                //             ),
                //             child: const Text("Connect Now", style: TextStyle(
                //                 fontWeight: FontWeight.bold, color: Colors.white),),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widgets

  Widget _buildCategory(String title, String img) {
    return Container(
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10), // for rounded square corners
            child: Image.asset(
              img,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.amiri(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }


  // Widget _buildCategory(String title, String img) {
  //   return Container(
  //     width: 80,
  //     margin: const EdgeInsets.symmetric(horizontal: 6),
  //     child: Column(
  //       children: [
  //         CircleAvatar(
  //           radius: 25,
  //           backgroundImage: AssetImage(img),
  //         ),
  //         const SizedBox(height: 5),
  //         Text(title, style: const TextStyle(fontSize: 12)),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildSectionTitle(String title, BuildContext context, Widget navigateTo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.amiri(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => navigateTo),
              );
            },
            child: Text(
              "View All",
              style: GoogleFonts.amiri(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      ),
    );
  }


  // Widget _buildSectionTitle(String title) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(title,
  //             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  //         const Text("View All", style: TextStyle(color: Colors.indigo)),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildProductList() {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
          /*  onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(),
                ),
              );
            },*/
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },

            child: Container(
              width: screenWidth * 0.44,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          product["image"],
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product["title"],
                          maxLines: 2,
                          style: const TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              product["oldPrice"],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              product["price"],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                size: 14, color: Colors.orangeAccent),
                            Text(product["rating"],
                                style: const TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }


  Widget _buildProductList2() {
    final screenWidth = MediaQuery.of(context).size.width;

    // Track favorite status for each product
    final List<bool> isFavorite = List.generate(products2.length, (_) => false);

    return SizedBox(
      height: 240, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: products2.length,
        itemBuilder: (context, index) {
          final product = products2[index];

          return StatefulBuilder(
            builder: (context, setStateSB) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen2(product: product),
                    ),
                  );
                },
                child: Container(
                  width: screenWidth * 0.44,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.asset(
                              product["image"],
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 8,
                            top: 8,
                            child: GestureDetector(
                              onTap: () {
                                setStateSB(() {
                                  isFavorite[index] = !isFavorite[index];
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  isFavorite[index] ? Icons.favorite : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product["title"],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                       /*     Row(
                              children: [
                                const Icon(Icons.star, size: 14, color: Colors.orangeAccent),
                                const SizedBox(width: 4),
                                Text(
                                  product["rating"],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
  Widget _buildProductList3() {
    final screenWidth = MediaQuery.of(context).size.width;

    // Track favorite status for each product
    final List<bool> isFavorite = List.generate(products2.length, (_) => false);

    return SizedBox(
      height: 240, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: products3.length,
        itemBuilder: (context, index) {
          final product = products3[index];

          return StatefulBuilder(
            builder: (context, setStateSB) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen2(product: product),
                    ),
                  );
                },
                child: Container(
                  width: screenWidth * 0.44,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.asset(
                              product["image"],
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 8,
                            top: 8,
                            child: GestureDetector(
                              onTap: () {
                                setStateSB(() {
                                  isFavorite[index] = !isFavorite[index];
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  isFavorite[index] ? Icons.favorite : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product["title"],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                       /*     Row(
                              children: [
                                const Icon(Icons.star, size: 14, color: Colors.orangeAccent),
                                const SizedBox(width: 4),
                                Text(
                                  product["rating"],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }


  Widget _buildProductList4() {
    final screenWidth = MediaQuery.of(context).size.width;

    // Track favorite status for each product
    final List<bool> isFavorite = List.generate(products2.length, (_) => false);

    return SizedBox(
      height: 240, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: products4.length,
        itemBuilder: (context, index) {
          final product = products4[index];

          return StatefulBuilder(
            builder: (context, setStateSB) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen2(product: product),
                    ),
                  );
                },
                child: Container(
                  width: screenWidth * 0.44,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.asset(
                              product["image"],
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 8,
                            top: 8,
                            child: GestureDetector(
                              onTap: () {
                                setStateSB(() {
                                  isFavorite[index] = !isFavorite[index];
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  isFavorite[index] ? Icons.favorite : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product["title"],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            /*     Row(
                              children: [
                                const Icon(Icons.star, size: 14, color: Colors.orangeAccent),
                                const SizedBox(width: 4),
                                Text(
                                  product["rating"],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildProductList5() {
    final screenWidth = MediaQuery.of(context).size.width;

    // Track favorite status for each product
    final List<bool> isFavorite = List.generate(products2.length, (_) => false);

    return SizedBox(
      height: 240, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: products5.length,
        itemBuilder: (context, index) {
          final product = products5[index];

          return StatefulBuilder(
            builder: (context, setStateSB) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen2(product: product),
                    ),
                  );
                },
                child: Container(
                  width: screenWidth * 0.44,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.asset(
                              product["image"],
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 8,
                            top: 8,
                            child: GestureDetector(
                              onTap: () {
                                setStateSB(() {
                                  isFavorite[index] = !isFavorite[index];
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  isFavorite[index] ? Icons.favorite : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product["title"],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            /*     Row(
                              children: [
                                const Icon(Icons.star, size: 14, color: Colors.orangeAccent),
                                const SizedBox(width: 4),
                                Text(
                                  product["rating"],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildProductList6() {
    final screenWidth = MediaQuery.of(context).size.width;

    // Track favorite status for each product
    final List<bool> isFavorite = List.generate(products2.length, (_) => false);

    return SizedBox(
      height: 240, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: products6.length,
        itemBuilder: (context, index) {
          final product = products6[index];

          return StatefulBuilder(
            builder: (context, setStateSB) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen2(product: product),
                    ),
                  );
                },
                child: Container(
                  width: screenWidth * 0.44,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.asset(
                              product["image"],
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 8,
                            top: 8,
                            child: GestureDetector(
                              onTap: () {
                                setStateSB(() {
                                  isFavorite[index] = !isFavorite[index];
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  isFavorite[index] ? Icons.favorite : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product["title"],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            /*     Row(
                              children: [
                                const Icon(Icons.star, size: 14, color: Colors.orangeAccent),
                                const SizedBox(width: 4),
                                Text(
                                  product["rating"],
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),*/
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }



}
/*
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;



  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool isFavorite = false; // 🔹 Initial state

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/ad_video.mp4")
      ..initialize().then((_) {
        setState(() {}); // refresh when video is ready
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlay() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  final List<String> banners = [
    "assets/images/banner1.png",
    "assets/images/banner1.png",
  ];

  final List<Map<String, dynamic>> products = [
    {
      "image": "assets/images/product1.png",
      "title": "Lorem ipsum dolor sit amet consectetur.",
      "price": "₹2,996.50",
      "oldPrice": "₹4,148.00",
      "rating": "4.8"
    },
    {
      "image": "assets/images/product2.png",
      "title": "Lorem ipsum dolor sit amet consectetur.",
      "price": "₹2,996.50",
      "oldPrice": "₹4,148.00",
      "rating": "4.8"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Top Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    // 🔹 Logo
                    Image.asset("assets/images/splash_screen.png", height: 40),

                    const SizedBox(width: 10),

                    // 🔹 Search Bar (Expanded to take available space)
                    Expanded(
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.search, size: 22, color: Colors.black54),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search...",
                                  border: InputBorder.none,
                                  isDense: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined, size: 28, color: Colors.black87),
                      onPressed: () {
                        // 🛒 Navigate to cart screen
                        print("Cart clicked");
                      },
                    ),
                  ],
                ),
              ),

              // 🔹 Categories
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    _buildCategory("Woman", "assets/images/w1.png"),
                    _buildCategory("Man", "assets/images/w2.png"),
                    _buildCategory("Electronics", "assets/images/w3.png"),
                    _buildCategory("Jewellery", "assets/images/w1.png"),
                    _buildCategory("Jewellery", "assets/images/w2.png"),
                    _buildCategory("Jewellery", "assets/images/w3.png"),
                    _buildCategory("Jewellery", "assets/images/w1.png"),
                    _buildCategory("Jewellery", "assets/images/w2.png"),
                  ],
                ),
              ),

              // 🔹 Banner Carousel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: SizedBox(
                  height: 180,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 180,
                      autoPlay: true,
                      viewportFraction: 0.9, // 👈 makes gap visible
                      enlargeCenterPage: true, // highlights center card
                      enableInfiniteScroll: true,
                    ),
                    items: banners.map((img) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1), // 👈 gap control
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            img,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )

              ),



              const SizedBox(height: 15),

              // 🔹 Recently Viewed
              _buildSectionTitle("Recently Viewed"),
              _buildProductList(),

              const SizedBox(height: 10),

              // 🔹 Explore Fresh Styles
              _buildSectionTitle("Explore fresh styles"),
              _buildProductList(),

              const SizedBox(height: 15),

              // 🔹 Video Ad Section

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            // height: 180,
            width: double.infinity, // Takes full width of screen
            height: MediaQuery.of(context).size.width * 0.5, // 50% of screen width
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 🎥 Video
                _controller.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                    : const Center(child: CircularProgressIndicator()),

                // ▶️ Play/Pause button overlay
                GestureDetector(
                  onTap: _togglePlay,
                  child: Icon(
                    _isPlaying ? Icons.pause_circle_filled : Icons.play_circle_fill,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),


              const SizedBox(height: 15),

              // 🔹 Flash Deals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Flash Deals",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        const Icon(Icons.flash_on, color: Colors.indigo),
                        const SizedBox(width: 5),
                        CountdownTimer(
                          endTime: DateTime.now().millisecondsSinceEpoch +
                              1000 * 60 * 60 * 12,
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _buildProductList(),

              const SizedBox(height: 20),

              // 🔹 Explore More
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Explore more",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.indigo),
                  ),
                ),
              ),

              // 🔹 Bottom Banner
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.shade50,
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/new_app_icon.png", height: 100),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Start Your Online Business & Grow with Limitless Opportunities",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text("Connect Now", style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // 🔹 Bottom Navigation Bar
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.indigo,
      //   unselectedItemColor: Colors.grey,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Wishlist"),
      //     BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Categories"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoriesScreen()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),

    );
  }

  // 🔹 Helper Widgets
  Widget _buildCategory(String title, String img) {
    return Container(
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(img),
          ),
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text("View All", style: TextStyle(color: Colors.indigo)),
        ],
      ),
    );
  }
  Widget _buildProductList() {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(),
                ),
              );
            },
            child: Container(
              width: screenWidth * 0.44,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          product["image"],
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product["title"],
                          maxLines: 2,
                          style: const TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              product["oldPrice"],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              product["price"],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                size: 14, color: Colors.orangeAccent),
                            Text(product["rating"],
                                style: const TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Widget _buildProductList() {
  //   final screenWidth = MediaQuery.of(context).size.width;
  //
  //   return SizedBox(
  //     height: 250,
  //     child: ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       padding: const EdgeInsets.symmetric(horizontal: 10),
  //       itemCount: products.length,
  //       itemBuilder: (context, index) {
  //         final product = products[index];
  //         return Container(
  //           width: screenWidth * 0.44, // 👈 card takes ~42% of screen width
  //           margin: const EdgeInsets.all(8),
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(12),
  //             boxShadow: [
  //               BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1)
  //             ],
  //           ),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Stack(
  //                 children: [
  //                   ClipRRect(
  //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
  //                     child: Image.asset(
  //                       product["image"],
  //                       height: 130,
  //                       width: double.infinity,
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                   Positioned(
  //                     right: 8,
  //                     top: 8,
  //                     child: GestureDetector(
  //                       onTap: () {
  //                         setState(() {
  //                           isFavorite = !isFavorite; // Toggle ❤️
  //                         });
  //                       },
  //                       child: CircleAvatar(
  //                         backgroundColor: Colors.white,
  //                         child: Icon(
  //                           isFavorite ? Icons.favorite : Icons.favorite_border,
  //                           color: Colors.red,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //
  //                 ],
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text(
  //                       product["title"],
  //                       maxLines: 2,
  //                       style: const TextStyle(fontSize: 12),
  //                       overflow: TextOverflow.ellipsis,
  //                     ),
  //                     const SizedBox(height: 5),
  //                     Row(
  //                       children: [
  //                         Text(
  //                           product["oldPrice"],
  //                           style: const TextStyle(
  //                             fontSize: 12,
  //                             color: Colors.grey,
  //                             decoration: TextDecoration.lineThrough,
  //                           ),
  //                         ),
  //                         const SizedBox(width: 5),
  //                         Text(
  //                           product["price"],
  //                           style: const TextStyle(
  //                             fontWeight: FontWeight.bold,
  //                             fontSize: 14,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                     const SizedBox(height: 5),
  //                     Row(
  //                       children: [
  //                         const Icon(Icons.star, size: 14, color: Colors.orangeAccent),
  //                         Text(product["rating"], style: const TextStyle(fontSize: 12)),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

}
*/
