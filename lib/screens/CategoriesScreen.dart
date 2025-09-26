// import 'package:demo_1/beauty_care_screen.dart';
// import 'package:demo_1/home_decor_screen.dart';
// import 'package:demo_1/jewellery_screen.dart';
// import 'package:demo_1/mens_clothing_screen.dart';
// import 'package:demo_1/womens_clothing_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../utils/BaseScreen.dart';


class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<CategoryItem> categories = [
    CategoryItem(
      title: "Ayurveda Medicine 🌿",
      imagePath: "assets/images/banner1.png",
      screen: const WomensClothingScreen(),
    ),
    CategoryItem(
      title: "Healing & Asceticism 🕉️",
      imagePath: "assets/images/BuddhistHealingTraditions.png",
      screen: const MensClothingScreen(),
    ),
    CategoryItem(
      title: "Accupressure & Massage ✋",
      imagePath: "assets/images/MarmaPointsChart.png",
      screen: const BeautyCareScreen(),
    ),
    CategoryItem(
      title: "Meditation & Mindfulness 🧘",
      imagePath: "assets/images/LovingKindness.png",
      screen: const JewelleryScreen(),
    ),
    CategoryItem(
      title: "Buddha Bowl (Diet & Nutrition) 🥗",
      imagePath: "assets/images/BuddhaBowl1.png",
      screen: const HomeDecorScreen(),
    ),
    CategoryItem(
      title: "Peace of Mind (Quotes, Sounds, Practices) 🕊️",
      imagePath: "assets/images/PeaceMeditation.png",
      screen: const HomeDecorScreen2(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => category.screen),
                );
              },
              child: CategoryCard(category: category),
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem {
  final String title;
  final String imagePath;
  final Widget screen;

  CategoryItem({
    required this.title,
    required this.imagePath,
    required this.screen,
  });
}

// class CategoryCard extends StatelessWidget {
//   final CategoryItem category;
//
//   const CategoryCard({super.key, required this.category});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         image: DecorationImage(
//           image: AssetImage(category.imagePath),
//           fit: BoxFit.cover,
//           colorFilter: ColorFilter.mode(
//             Colors.black.withOpacity(0.25),
//             BlendMode.darken,
//           ),
//         ),
//       ),
//       alignment: Alignment.bottomLeft,
//       padding: const EdgeInsets.all(16),
//       child: Text(
//         category.title,
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 20,
//           fontWeight: FontWeight.w600,
//         ),
//       ),
//     );
//   }
// }
class CategoryCard extends StatelessWidget {
  final CategoryItem category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(category.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.black.withOpacity(0.6), // left side darker
              Colors.transparent, // right side fade out
            ],
          ),
        ),
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(16),
        child: Text(
          category.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}


class BeautyCareScreen extends StatefulWidget {
  const BeautyCareScreen({super.key});

  @override
  State<BeautyCareScreen> createState() => _BeautyCareScreenState();
}

class _BeautyCareScreenState extends State<BeautyCareScreen> {
  final List<Map<String, String>> beautyCategories = const [
    {
      "title": "Pressure Points",
      "image": "assets/images/PressurePoints.png",
      "description": '''Pressure Points (Acupressure / Ayurvedic pressure therapy)

Origin & background:
Pressure-point therapy (similar to acupressure in Chinese medicine) has ancient roots in India and Asia. It is based on the belief that the body has vital pathways (nadis/meridians) where life energy (prāṇa or qi) flows. Applying pressure on specific points along these pathways helps remove blockages, relieve pain, and restore balance.

Method:
Use of thumbs, fingers, knuckles, or blunt objects to apply steady pressure to designated points for 30 sec–2 min. Points correspond to internal organs, glands, and systems (e.g., pressing between eyebrows to relieve stress, the “Hegu” point between thumb and forefinger for headache). No needles involved — unlike acupuncture, it’s non-invasive.

Therapeutic uses:
- Pain relief: headaches, back pain, arthritis
- Stress & anxiety reduction
- Digestive balance (points on wrist/abdomen)
- Respiratory support (points on chest/hands)

Scientific notes:
Some evidence suggests acupressure may reduce pain (especially dysmenorrhea, labor pain), nausea, and stress. Mechanisms may involve endorphin release, muscle relaxation, and autonomic nervous system balance.

Cautions:
Should not replace urgent medical care. Avoid excessive force on sensitive areas, fractures, varicose veins, or pregnancy-related points without expert guidance.
''',
    },
    {
      "title": "Foot Reflexology",
      "image": "assets/images/FootReflexology.png",
      "description": '''Foot Reflexology

Origin & background:
Foot reflexology is an ancient practice found in Egypt, India, and China. It maps the feet as a miniature body, where each part of the foot corresponds to an internal organ or system. In Ayurveda, feet were considered sacred — “the support of the body” — and massaging/reflexing them was a therapeutic ritual.

Method:
Pressure applied to specific zones of the sole, heel, arch, and toes. 
- Toes = head & neck
- Arch = digestive system
- Heel = lower back & pelvis
Practitioners use thumb-walking techniques, massage sticks, or stones.

Therapeutic uses:
- Stress reduction & deep relaxation
- Circulatory improvement
- Support for digestive, respiratory, and hormonal balance
- Relief for plantar pain and neuropathy (in some modern studies)

Scientific notes:
Clinical studies show reflexology may reduce anxiety, improve quality of life in cancer patients, and ease pain, though evidence is mixed and often small-scale.

Cautions:
Not recommended in foot injuries, severe circulatory disorders, or infections. Should complement, not replace, mainstream treatments.
''',
    },
    {
      "title": "Marma Points Chart",
      "image": "assets/images/MarmaPointsChart.png",
      "description": '''Marma Points (Ayurvedic vital points)

Origin & background:
In Ayurveda, marma points are vital energy spots on the body where muscles, veins, ligaments, bones, and joints meet. The classical text Sushruta Samhita lists 107 marma points. They overlap conceptually with acupuncture points and yoga’s chakras, and were used in both healing and martial arts (Kalaripayattu).

Method:
Gentle massage, pressure, or herbal oils applied to stimulate marma points. Marma therapy balances doshas, clears blocked energy, and revitalizes organs. Example: Hridaya marma (near heart) calms anxiety; Nabhi marma (navel) supports digestion.

Therapeutic uses:
- Physical healing: pain, stiffness, digestive issues
- Mental-emotional balance: stress, insomnia
- Preventive care: restoring body’s natural energy flow

Scientific notes:
Research is emerging — marma stimulation shows promise for pain relief, improved circulation, and relaxation. Similar to acupressure, effects may involve neuromuscular reflexes and endorphin release.

Cautions:
Incorrect pressure on vital marmas (esp. head, throat, chest) can harm. Traditionally, knowledge was guarded and taught under supervision.
''',
    },

    {
      "title": "Ear Seeds",
      "image": "assets/images/EarSeeds.png",
      "description": '''Ear Seeds (Auriculotherapy)

Origin & background:
Based on auriculotherapy (ear acupuncture), which maps the ear as a microsystem of the whole body. In Traditional Chinese Medicine (TCM), the ear reflects an inverted fetus — points on the ear correspond to different organs. Instead of needles, ear seeds (often vaccaria seeds or tiny beads) are taped on ear points to stimulate them.

Method:
Seeds/beads placed with adhesive tape on specific points (e.g., ear point for appetite, stress, or back pain). Patient massages the seeds several times daily for stimulation.

Therapeutic uses:
- Pain management (back pain, migraine, arthritis)
- Anxiety, insomnia, and stress
- Addiction and weight management
- Supportive therapy in smoking cessation

Scientific notes:
Studies suggest auriculotherapy may help reduce pain, stress, and withdrawal symptoms, though evidence varies. It’s safe and non-invasive, making it popular in integrative medicine clinics.

Cautions:
Minor ear irritation or soreness possible. Should be done by trained practitioners for correct point placement. Not a substitute for medical treatment in serious illness.
''',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF7F0),
        surfaceTintColor: Color(0xFFFDF7F0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Acupressure & Massage ✋",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: beautyCategories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final item = beautyCategories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen11(
                      title: item["title"]!,
                      image: item["image"]!,
                      description: item["description"]!,
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item["title"]!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// class BeautyCareScreen extends StatefulWidget {
//   const BeautyCareScreen({super.key});
//
//   @override
//   State<BeautyCareScreen> createState() => _BeautyCareScreenState();
// }
//
// class _BeautyCareScreenState extends State<BeautyCareScreen> {
//   final List<Map<String, String>> beautyCategories = const [
//     {"title": "PressurePoints", "image": "assets/images/PressurePoints.png"},
//     {"title": "FootReflexology", "image": "assets/images/FootReflexology.png"},
//     {"title": "MarmaPointsChart", "image": "assets/images/MarmaPointsChart.png"},
//     {"title": "EarSeeds", "image": "assets/images/EarSeeds.png"},
//     // {"title": "Zusanli", "image": "assets/images/w2.png"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFDF7F0),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFDF7F0),
//         surfaceTintColor:Color(0xFFFDF7F0),
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           "Accupressure & Massage ✋",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: GridView.builder(
//           itemCount: beautyCategories.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 12,
//             crossAxisSpacing: 12,
//             childAspectRatio: 0.7,
//           ),
//           itemBuilder: (context, index) {
//             final item = beautyCategories[index];
//             return Column(
//               children: [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       item["image"]!,
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 Text(
//                   item["title"]!,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//

class HomeDecorScreen extends StatefulWidget {
  const HomeDecorScreen({super.key});

  @override
  State<HomeDecorScreen> createState() => _HomeDecorScreenState();
}

class _HomeDecorScreenState extends State<HomeDecorScreen> {
  final List<Map<String, String>> homeDecorCategories = const [
    {
      "title": "Classic Buddha Bowl",
      "image": "assets/images/BuddhaBowl1.png",
      "description": "Origin & Background: The term 'Buddha Bowl' is inspired by Buddhist monks' practice of carrying bowls filled with simple, plant-based foods, rounded like a Buddha's belly, symbolizing abundance and mindfulness in eating.\n\nComponents: A typical Buddha Bowl includes:\n- Base: Whole grains like quinoa, brown rice, or couscous.\n- Protein: Legumes (chickpeas, lentils), tofu, tempeh, or edamame.\n- Vegetables: Raw or roasted veggies such as kale, spinach, sweet potatoes, or beets.\n- Healthy Fats: Avocado slices, nuts, seeds, or olive oil.\n- Dressing: Tahini, lemon-tahini, or miso-based dressings.\n\nHealth Benefits: Provides a balanced mix of macronutrients, rich in fiber aiding digestion, supports heart health with healthy fats, and encourages mindful eating practices.\n\nPreparation: Arrange each component in a bowl, focusing on color and texture. Drizzle with dressing and enjoy.\n\nCautions: Be mindful of portion sizes to avoid excessive calorie intake. Ensure a variety of vegetables to meet nutritional needs."
    },

    {
      "title": "Detox Green",
      "image": "assets/images/BuddhaBowl2.png",
      "description": "Origin & Background: Green juices have gained popularity in modern wellness culture, promoted for their detoxifying properties. While the body naturally detoxifies via the liver and kidneys, green juices are considered a supplemental aid.\n\nComponents: Common ingredients include:\n- Leafy Greens: Spinach, kale, parsley.\n- Fruits: Apples, lemons, pineapples.\n- Vegetables: Cucumbers, celery, beets.\n- Add-ins: Ginger, turmeric, mint.\n\nHealth Benefits: Rich in vitamins and antioxidants, supports hydration and digestion, and may aid in reducing inflammation.\n\nPreparation: Juice or blend the ingredients until smooth. Consume fresh for maximum nutrient retention.\n\nCautions: Juicing removes dietary fiber; consider supplementing with whole fruits and vegetables. High sugar content in fruit-based juices may not be suitable for individuals with blood sugar concerns."
    },

    {
      "title": "Protein Power",
      "image": "assets/images/BuddhaBowl3.png",
      "description": "Origin & Background: Protein powders have been used since the mid-20th century, gaining prominence among athletes and bodybuilders. They provide a convenient source of protein, especially for those with increased dietary needs.\n\nTypes:\n- Whey Protein: Fast-digesting, complete amino acid profile.\n- Casein Protein: Slow-digesting, supports overnight muscle repair.\n- Plant-Based Proteins: Pea, hemp, soy, rice.\n\nHealth Benefits: Supports muscle growth and repair, aids in weight management by promoting satiety, and is convenient for those with dietary restrictions.\n\nPreparation: Mix with water, milk, or plant-based milk. Can be added to smoothies or baked goods.\n\nCautions: Excessive intake may strain kidneys in susceptible individuals. Some powders may contain added sugars or artificial ingredients. Not a replacement for whole food protein sources."
    },

    {
      "title": "Mediterranean",
      "image": "assets/images/BuddhaBowl4.png",
      "description": "Origin & Background: The Mediterranean Diet is based on traditional eating patterns of countries bordering the Mediterranean Sea, such as Greece, Italy, and Spain. It emphasizes whole, minimally processed foods and has been associated with numerous health benefits.\n\nComponents:\n- Fruits & Vegetables: A variety of seasonal produce.\n- Whole Grains: Bread, pasta, rice, couscous.\n- Healthy Fats: Olive oil, nuts, seeds.\n- Proteins: Fish, poultry, legumes.\n- Dairy: Cheese, yogurt in moderation.\n- Herbs & Spices: Garlic, basil, oregano.\n\nHealth Benefits: Reduces risk of heart disease, supports brain health and cognitive function, may aid in weight management, and reduces inflammation and oxidative stress.\n\nPreparation: Focus on fresh, seasonal ingredients. Use olive oil as the primary fat source. Incorporate fish and legumes regularly.\n\nCautions: Portion control is important to avoid excessive calorie intake. Moderate wine consumption is optional and should be approached with caution."
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF7F0),
        surfaceTintColor: Color(0xFFFDF7F0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Buddha Bowl (Diet & Nutrition) 🥗",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: homeDecorCategories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final item = homeDecorCategories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen11(
                      title: item["title"]!,
                      image: item["image"]!,
                      description: item["description"]!,
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item["title"]!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// class HomeDecorScreen extends StatefulWidget {
//   const HomeDecorScreen({super.key});
//
//   @override
//   State<HomeDecorScreen> createState() => _HomeDecorScreenState();
// }
//
// class _HomeDecorScreenState extends State<HomeDecorScreen> {
//   final List<Map<String, String>> homeDecorCategories = const [
//     {"title": "Classic Buddha Bowl", "image": "assets/images/BuddhaBowl1.png"},
//     {"title": "Detox Green", "image": "assets/images/BuddhaBowl2.png"},
//     {"title": "Protein Power", "image": "assets/images/BuddhaBowl3.png"},
//     {"title": "Mediterranean", "image": "assets/images/BuddhaBowl4.png"},
//     // {"title": "sweet potatoes", "image": "assets/images/w1.png"},
//     // {"title": "Avocado slices", "image": "assets/images/w1.png"},
//     // {"title": "Kimchi", "image": "assets/images/w1.png"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFDF7F0),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFDF7F0),
//         surfaceTintColor:Color(0xFFFDF7F0),
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           "Buddha Bowl (Diet & Nutrition) 🥗",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: GridView.builder(
//           itemCount: homeDecorCategories.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 12,
//             crossAxisSpacing: 12,
//             childAspectRatio: 0.7,
//           ),
//           itemBuilder: (context, index) {
//             final item = homeDecorCategories[index];
//             return Column(
//               children: [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       item["image"]!,
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 Text(
//                   item["title"]!,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


class HomeDecorScreen2 extends StatefulWidget {
  const HomeDecorScreen2({super.key});

  @override
  State<HomeDecorScreen2> createState() => _HomeDecorScreenState2();
}

class _HomeDecorScreenState2 extends State<HomeDecorScreen2> {
  final List<Map<String, String>> homeDecorCategories = const [
    {
      "title": "Peace Meditation",
      "image": "assets/images/PeaceMeditation.png",
      "description": "1. “Meditation is not a way of making your mind quiet. It is a way of entering the quiet that is already there.” — Jon Kabat-Zinn\n\n2. “Peace comes from within. Do not seek it without.” — Buddha\n\n3. “In the midst of movement and chaos, keep stillness inside of you.” — Deepak Chopra\n\n4. “The mind can go in a thousand directions, but on this beautiful path, I walk in peace.” — Thich Nhat Hanh\n\n5. “Meditation is the ultimate mobile device; you can use it anywhere, anytime, unobtrusively.” — Sharon Salzberg\n\n6. “Meditation is bringing the mind home.” — Sogyal Rinpoche\n\n7. “To understand the immeasurable, the mind must be extraordinarily quiet, still.” — J. Krishnamurti\n\n8. “Meditation is the discovery that the point of life is always arrived at in the immediate moment.” — Alan Watts\n\n9. “The quieter you become, the more you can hear.” — Ram Dass\n\n10. “Meditation is a deep listening to the song of your own soul.” — Kabir Helminski"
    },
    {
      "title": "Mindful Breathing",
      "image": "assets/images/MindfulBreathing.png",
      "description": "1. “If you want to conquer the anxiety of life, live in the moment, live in the breath.” — Amit Ray\n\n2. “Conscious breathing heightens awareness and deepens relaxation.” — Dan Brule\n\n3. “When the breath is unsteady, all is unsteady; when the breath is still, all is still.” — Goraksasathakam\n\n4. “Breathing in, I calm my body. Breathing out, I smile.” — Thich Nhat Hanh\n\n5. “Breath is the bridge which connects life to consciousness, which unites your body to your thoughts.” — Thich Nhat Hanh\n\n6. “The ability to breathe is a gift. Wake up grateful each day for that gift.” — Johnny Lung\n\n7. “One conscious breath in and out is a meditation.” — Eckhart Tolle\n\n8. “Feelings come and go like clouds in a windy sky. Conscious breathing is my anchor.” — Thich Nhat Hanh\n\n9. “Breathing is the master key to the mind.” — Thich Nhat Hanh\n\n10. “The breath is the finest gift of nature. Be grateful for this wonderful gift.” — Amit Ray"
    },

    {
      "title": "Gratitude Journal",
      "image": "assets/images/GratitudeJournal.png",
      "description": "1. “Gratitude is not only the greatest of virtues, but the parent of all the others.” — Marcus Tullius Cicero\n\n2. “Give thanks always. It’s the greatest prayer we can offer, the greatest practice we can do.” — Josie Robinson\n\n3. “Gratitude turns what we have into enough.” — Aesop\n\n4. “Gratitude is the fairest blossom which springs from the soul.” — Henry Ward Beecher\n\n5. “Reflect each day on all you have to be grateful for and you will receive more to be grateful for.” — Chuck Danes\n\n6. “Live each moment in a rampage of appreciation.” — Wayne Dyer\n\n7. “When we focus on our gratitude, the tide of disappointment goes out and the tide of love rushes in.” — Kirstin Armstrong\n\n8. “There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.” — Albert Einstein\n\n9. “The more grateful I am, the more beauty I see.” — Mary Davis\n\n10. “Gratitude is the healthiest of all human emotions. The more you express gratitude for what you have, the more likely you will have even more to express gratitude for.” — Zig Ziglar"
    },

    {
      "title": "Nature Sounds",
      "image": "assets/images/NatureSounds.png",
      "description": "1. “The woods were my Ritalin. Nature calmed me, focused me, and yet excited my senses.” — Richard Louv\n\n2. “Those who contemplate the beauty of the earth find reserves of strength that will endure as long as life lasts.” — Rachel Carson\n\n3. “Nature has a way of grounding us, sparking wonder, and filling us with awe.” — Unknown\n\n4. “In every walk with nature one receives far more than he seeks.” — John Muir\n\n5. “Look deep into nature, and then you will understand everything better.” — Albert Einstein\n\n6. “The earth has music for those who listen.” — William Shakespeare\n\n7. “Nature is not a place to visit. It is home.” — Gary Snyder\n\n8. “The best remedy for those who are afraid, lonely or unhappy is to go outside, somewhere they can be quiet, alone with the heavens, nature and God.” — Anne Frank\n\n9. “To sit in the shade on a fine day and look upon verdure is the most perfect refreshment.” — Jane Austen\n\n10. “Nature does not hurry, yet everything is accomplished.” — Lao Tzu"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF7F0),
        surfaceTintColor: Color(0xFFFDF7F0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Peace of Mind (Quotes, Sounds, Practices) 🕊️",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: homeDecorCategories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final item = homeDecorCategories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen11(
                      title: item["title"]!,
                      image: item["image"]!,
                      description: item["description"]!,
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item["title"]!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// class HomeDecorScreen2 extends StatefulWidget {
//   const HomeDecorScreen2({super.key});
//
//   @override
//   State<HomeDecorScreen2> createState() => _HomeDecorScreenState2();
// }
//
// class _HomeDecorScreenState2 extends State<HomeDecorScreen2> {
//   final List<Map<String, String>> homeDecorCategories = const [
//     {"title": "PeaceMeditation", "image": "assets/images/PeaceMeditation.png"},
//     {"title": "MindfulBreathing", "image": "assets/images/MindfulBreathing.png"},
//     {"title": "GratitudeJournal", "image": "assets/images/GratitudeJournal.png"},
//     {"title": "NatureSounds", "image": "assets/images/NatureSounds.png"},
//     // {"title": "Relaxation", "image": "assets/images/w1.png"},
//     // {"title": "Sleep & Rest", "image": "assets/images/w1.png"},
//     // {"title": "Journaling", "image": "assets/images/w1.png"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFDF7F0),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFDF7F0),
//         surfaceTintColor:Color(0xFFFDF7F0),
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           "Peace of Mind (Quotes, Sounds, Practices) 🕊️",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: GridView.builder(
//           itemCount: homeDecorCategories.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 12,
//             crossAxisSpacing: 12,
//             childAspectRatio: 0.7,
//           ),
//           itemBuilder: (context, index) {
//             final item = homeDecorCategories[index];
//             return Column(
//               children: [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       item["image"]!,
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 Text(
//                   item["title"]!,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


class JewelleryScreen extends StatefulWidget {
  const JewelleryScreen({super.key});

  @override
  State<JewelleryScreen> createState() => _JewelleryScreenState();
}

class _JewelleryScreenState extends State<JewelleryScreen> {
  final List<Map<String, String>> jewelleryCategories = const [
    {
      "title": "Mindfulness Meditation",
      "image": "assets/images/MindfulnessMeditation.png",
      "description": '''Origin & background
Mindfulness meditation originates in Buddhist practice, especially in Theravāda traditions, where it’s called Vipassanā (“insight”). Its goal is awareness of the present moment and clear observation of thoughts, sensations, and emotions without attachment.

Method
Sit comfortably, maintain an upright posture.
Focus on breathing or bodily sensations.
Observe thoughts and emotions as they arise, labeling them gently (e.g., “thinking,” “feeling,” “hearing”) without judgment.
Practice can be 10–60 minutes daily.

Therapeutic uses & benefits
Reduces stress, anxiety, and depressive symptoms.
Enhances attention, concentration, and emotional regulation.
Supports pain management by changing perception of discomfort.
Improves sleep quality and reduces psychosomatic complaints.

Scientific notes
Numerous studies show reduced cortisol levels, enhanced prefrontal cortex activity, and improved autonomic balance.
Mindfulness-Based Stress Reduction (MBSR) is a clinically validated program used worldwide.

Cautions
Generally safe, but intense practice may bring up suppressed trauma. Supervision recommended for those with psychiatric conditions.''',
    },

    {
      "title": "Loving Kindness",
      "image": "assets/images/LovingKindness.png",
      "description": '''Origin & background
Loving-kindness meditation comes from Buddhist traditions, aiming to cultivate unconditional compassion and goodwill toward self and others. Mettā means “loving kindness” in Pali.

Method
Sit comfortably, breathe deeply.
Silently repeat phrases: “May I be happy, may I be safe, may I be healthy, may I live with ease.”
Gradually extend these wishes to loved ones, acquaintances, strangers, and even those with whom there’s conflict.

Therapeutic uses & benefits
Enhances empathy, social connectedness, and positive emotions.
Reduces negative affect, stress, and self-criticism.
Can improve cardiovascular health indirectly by lowering emotional stress.

Scientific notes
Studies show increased vagal tone, better heart rate variability, and improved mood.
Useful in interventions for depression, PTSD, and interpersonal conflict.

Cautions
Generally safe; beginners may feel frustration if resistance arises. Practice gradually.''',
    },

    {
      "title": "Transcendental",
      "image": "assets/images/Transcendental.png",
      "description": '''Origin & background
Developed from Vedic and Upanishadic traditions, TM popularized in modern form by Maharishi Mahesh Yogi. It involves silent mantra repetition to transcend ordinary thought.

Method
Sit comfortably with eyes closed.
Repeat a personal mantra silently for 15–20 minutes twice daily.
Let thoughts come and go without attachment; the mantra anchors attention.

Therapeutic uses & benefits
Reduces stress, anxiety, and high blood pressure.
Improves cardiovascular health and cognitive function.
Enhances creativity, memory, and emotional resilience.

Scientific notes
Clinical trials show modest reductions in blood pressure, cortisol, and perceived stress.
Functional MRI studies indicate decreased default-mode network activity, suggesting reduced mind-wandering.

Cautions
Requires instruction from certified TM teachers for best results.
Generally safe; overdoing prolonged sessions without guidance may cause fatigue or mild disorientation.''',
    },

    {
      "title": "Body Scan",
      "image": "assets/images/BodyScan.png",
      "description": '''Origin & background
Body-scan meditation comes from Vipassanā and modern MBSR practices. It fosters somatic awareness, helping practitioners notice tension, discomfort, or sensations in the body.

Method
Lie or sit comfortably.
Slowly direct attention to each part of the body from head to toes (or reverse).
Observe sensations without judgment — warmth, tingling, tension, or ease.

Therapeutic uses & benefits
Reduces chronic pain perception and stress.
Improves sleep and relaxation.
Enhances interoceptive awareness (connection to bodily states), aiding emotional regulation.

Scientific notes
Evidence supports reductions in chronic pain, anxiety, and sleep disturbances.
Can modulate brain regions involved in body awareness (insula) and stress (amygdala).

Cautions
May bring discomfort if body has pain or trauma history. Start gradually and combine with gentle guidance.''',
    },

    {
      "title": "Chakra",
      "image": "assets/images/w3.png",
      "description": '''Origin & background
Chakra meditation arises from classical yoga and Tantra in Indian traditions. Chakras are energy centers along the spine that influence physical, emotional, and spiritual health.

Method
Sit comfortably; focus on specific chakras sequentially (root → crown).
Visualize color, sound (mantra), or light associated with each chakra.
Combine with controlled breathing and awareness of bodily sensations.

Therapeutic uses & benefits
Promotes emotional balance, vitality, and spiritual growth.
May relieve stress, anxiety, and psychosomatic tension.
Enhances meditation depth and mind-body connection.

Scientific notes
Direct research is limited; studies on yoga and guided imagery suggest benefits for stress and mood regulation.
Chakra visualization may engage relaxation responses and focused attention networks in the brain.

Cautions
Safe for most; beginners may feel mild dizziness or emotional release. Guidance recommended for sustained practice.''',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF7F0),
        surfaceTintColor: Color(0xFFFDF7F0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Meditation & Mindfulness 🧘",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: jewelleryCategories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final item = jewelleryCategories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen11(
                      title: item["title"]!,
                      image: item["image"]!,
                      description: item["description"]!,
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item["title"]!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// class JewelleryScreen extends StatefulWidget {
//   const JewelleryScreen({super.key});
//
//   @override
//   State<JewelleryScreen> createState() => _JewelleryScreenState();
// }
//
// class _JewelleryScreenState extends State<JewelleryScreen> {
//   final List<Map<String, String>> jewelleryCategories = const [
//     {"title": "MindfulnessMeditation", "image": "assets/images/MindfulnessMeditation.png"},
//     {"title": "LovingKindness", "image": "assets/images/LovingKindness.png"},
//     {"title": "Transcendental", "image": "assets/images/Transcendental.png"},
//     {"title": "BodyScan ", "image": "assets/images/BodyScan.png"},
//     {"title": "Chakra", "image": "assets/images/w3.png"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFDF7F0),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFDF7F0),
//         surfaceTintColor:Color(0xFFFDF7F0),
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           "Meditation & Mindfulness 🧘",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: GridView.builder(
//           itemCount: jewelleryCategories.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 12,
//             crossAxisSpacing: 12,
//             childAspectRatio: 0.7,
//           ),
//           itemBuilder: (context, index) {
//             final item = jewelleryCategories[index];
//             return Column(
//               children: [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       item["image"]!,
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 Text(
//                   item["title"]!,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//

class MensClothingScreen extends StatefulWidget {
  const MensClothingScreen({super.key});

  @override
  State<MensClothingScreen> createState() => _MensClothingScreenState();
}

class _MensClothingScreenState extends State<MensClothingScreen> {
  final List<Map<String, String>> mensCategories = const [
    {
      "title": "Healing",
      "image": "assets/images/BuddhistHealingTraditions.png",
      "description": '''Healing (Traditional & Buddhist Monastic View)

Traditional meaning:
In ancient India, healing (Sanskrit: cikitsā, Pali: bhesajja) referred to more than curing disease — it was restoring balance between the three doshas (vāta, pitta, kapha) in Ayurveda, or maintaining harmony between body, mind, and karma in Buddhist thought. In monasteries, healing often combined herbal remedies (like the plants you listed), dietary rules, and ritual/spiritual elements. Healing was both physical (treating fever, wounds, digestive illness) and moral-spiritual (healing ignorance, craving, and mental suffering).

Methods of healing:

• Herbal medicine: monastic doctors like Jīvaka Komārabhacca treated monks and laypeople with plants and surgical skills.
• Ritual chanting & mantra: protective recitations (e.g., paritta suttas) were used for spiritual healing.
• Compassionate caregiving: Buddhist texts (e.g., Vinaya) emphasized caring for sick monks as part of compassion and duty.
• Dietary healing: adjusting food (simple gruel, rice water, ginger decoction) was seen as medicinal.

Modern interpretation:
Healing today draws from both traditions: Ayurveda emphasizes systemic correction and rasayana (rejuvenation), while Buddhist-inspired healing focuses on reducing stress, anxiety, and psychosomatic suffering through mind-body practices.

Limits & cautions:
Healing in this sense does not always mean “curing” — chronic conditions may persist. Over-reliance on ritual healing without modern care can delay effective treatment. Ancient texts encouraged balance: spiritual care with practical medicine.
'''
    },

    {
      "title": "Discipline",
      "image": "assets/images/DailyPractices.png",
      "description": '''Discipline (Vinaya / Tapas)

Traditional meaning:
Discipline (Sanskrit: tapas = heat, austerity; Pali: vinaya = monastic discipline) was the framework for spiritual and physical health. Buddhist monks followed the Vinaya Pitaka, a detailed code of conduct, while ascetic traditions practiced self-restraint to purify body and mind.

Elements of discipline:

• Moral vows: no killing, stealing, sexual misconduct, lying, or intoxication.
• Daily routine: rising early, meditation, alms, study, caring for sick monks.
• Dietary discipline: eating before noon, simple meals, occasional fasting.
• Body-mind discipline: regulated sleep, celibacy, mindfulness in walking and speech.

Purpose in healing:
Discipline was itself medicinal — preventing diseases born of indulgence (overeating, alcohol, sexual excess). It cultivated inner peace, reduced anxiety, and made the mind sharper for meditation.

Modern interpretation:
Today discipline is seen in yoga routines, mindful eating, digital detoxes, and structured daily habits that promote balance. It remains central to mental health therapies (CBT, habit-restructuring).

Limits & cautions:
Excessive austerity can harm the body (malnutrition, exhaustion). The Buddha himself rejected extreme asceticism in favor of the “Middle Path.”
'''
    },

    {
      "title": "Meditative",
      "image": "assets/images/Meditative.png",
      "description": '''Meditation (Dhyāna / Bhāvanā)

Traditional meaning:
Meditation (bhāvanā = cultivation) was the central practice for transforming the mind in Buddhism. The Buddha is described as the “Supreme Physician” whose medicine is the Dhamma. Meditation thus was seen as a healing art for the mind — curing greed, hatred, and delusion.

Core practices:

• Śamatha (calm abiding): focusing on breath, body, or an object to calm restlessness.
• Vipassanā (insight): observing phenomena to realize impermanence (anicca), suffering (dukkha), and non-self (anattā).
• Loving-kindness (Mettā-bhāvanā): cultivating compassion to heal anger and resentment.
• Mindfulness of the body (Satipaṭṭhāna): awareness of breathing, posture, and sensations to bring mind-body unity.

Physiological/psychological effects:
Studies show meditation lowers stress hormones, improves immune function, enhances emotional regulation, and reduces chronic pain perception. Monastics used it to maintain health, endurance in austerities, and clarity.

Limits & cautions:
Deep meditation may stir unresolved trauma or psychological instability if unsupervised. Traditional systems always recommended guidance from a teacher (kalyāṇa-mitta).
'''
    },

    {
      "title": "Holistic",
      "image": "assets/images/Holistic.png",
      "description": '''Holistic Medicine (Sarvāṅga cikitsā)

Traditional meaning:
“Holistic” wasn’t a term in Sanskrit, but the concept existed: treating the whole person — body, mind, spirit, and social context — not just isolated symptoms. Ayurveda emphasized the tridosha balance, while Buddhist healing addressed mind, ethics, and environment.

Principles:

1. Body: diet, herbs, massage, seasonal regimens.
2. Mind: meditation, ethical living, mental purification.
3. Spirit/Karma: prayers, chants, merit-making, and compassion as healing energies.
4. Community: health seen as interdependent (caring for sick monks, lay-donations for medicine).

Modern application:
Holistic medicine today merges Ayurveda, meditation, yoga, dietetics, and psychotherapy. Hospitals now explore integrative medicine, combining conventional care with meditation, nutrition, and herbal supplements.

Limits & cautions:
Holistic care works best when combined with scientific evidence. Purely alternative paths can miss urgent interventions. The safest model is integrative — modern biomedicine plus holistic practices.
'''
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF7F0),
        surfaceTintColor: Color(0xFFFDF7F0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Healing & Asceticism 🕉️",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
        itemCount: mensCategories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          final item = mensCategories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductDetailScreen11(
                    title: item["title"]!,
                    image: item["image"]!,
                    description: item["description"]!,
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item["image"]!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item["title"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),

    ),
    );
  }
}


/*
class MensClothingScreen extends StatefulWidget {
  const MensClothingScreen({super.key});

  @override
  State<MensClothingScreen> createState() => _MensClothingScreenState();
}

class _MensClothingScreenState extends State<MensClothingScreen> {
  final List<Map<String, String>> mensCategories = const [
    {"title": "Healing", "image": "assets/images/BuddhistHealingTraditions.png"},
    {"title": "Discipline", "image": "assets/images/DailyPractices.png"},
    {"title": "Meditative", "image": "assets/images/Meditative.png"},
    {"title": "Holistic", "image": "assets/images/Holistic.png"},
    // {"title": "Pranayama", "image": "assets/images/w1.png"},
    // {"title": "Heart health", "image": "assets/images/w1.png"},
    // {"title": "Immunity", "image": "assets/images/w1.png"},
    // {"title": "Reproductive", "image": "assets/images/w1.png"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF7F0),
        surfaceTintColor:Color(0xFFFDF7F0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Healing & Asceticism 🕉️",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: mensCategories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            final item = mensCategories[index];
            return Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item["image"]!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item["title"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
*/




class WomensClothingScreen extends StatefulWidget {
  const WomensClothingScreen({super.key});

  @override
  State<WomensClothingScreen> createState() => _WomensClothingScreenState();
}

class _WomensClothingScreenState extends State<WomensClothingScreen> {
  final List<Map<String, String>> womensCategories = const [
    // {
    //   "title": "Herbal Remedy",
    //   "image": "assets/images/cw1.png",
    //   "description": "Herbal Remedy helps boost immunity and overall health."
    // },
    {
      "title": "Tulsi",
      "image": "assets/images/cw2.png",
      "description": '''Tulsi (Holy basil — Ocimum sanctum / Ocimum tenuiflorum)

Tulsi — sacred in Hinduism and widely used in folk and Ayurvedic medicine — is a bushy aromatic herb with soft, ovate leaves and a pungent, clove-like aroma. In monastic and devotional settings (including Buddhist regions influenced by Indian medicine), tulsi is valued for daily ritual use and simple household remedies.

Traditional uses:

• Respiratory: teas or steam inhalations for coughs, colds, bronchitis and mild asthma symptoms.
• Fever and infection: used as an antipyretic and “blood-purifier.”
• Digestive: used to relieve gas, indigestion, and reduce appetite irregularities.
• Nervine/adaptogen: thought to reduce stress, promote mental clarity, and support sleep in mild anxiety.
• Topical: poultices for insect bites, minor cuts, and skin inflammation.

Key constituents & pharmacology:

Essential oils (eugenol, methyl eugenol, cineole), phenolic compounds, ursolic acid, rosmarinic acid. Eugenol contributes to antimicrobial and mild analgesic activity; ursolic/rosmarinic acids have anti-inflammatory and antioxidant effects. Laboratory studies show broad antimicrobial, anti-inflammatory, and adaptogenic effects; clinical evidence is modest but promising for stress reduction, and symptomatic relief in uncomplicated upper respiratory infections.

Typical preparations & doses:

Tulsi tea (1–2 g dried leaf steeped) several times daily for colds.
Tinctures/extracts standardized to essential oil or polyphenols vary; follow product dosing.
Fresh leaves chewed for immediate relief of sore throat.

Safety & cautions:

Generally safe short-term; high doses of concentrated extracts should be used cautiously in pregnancy (possible uterine effects) and with blood-sugar-lowering drugs (may potentiate hypoglycemia). Mild GI upset possible.
'''
    },
{
"title": "Triphala",
"image": "assets/images/cw3.png",
"description": '''Triphala (the classical three-fruit formula: Amalaki, Bibhitaki, Haritaki)

Triphala is not a single plant but a classical Ayurvedic formulation combining three fruits: Amla/Amalaki (Emblica officinalis / Phyllanthus emblica), Bibhitaki (Terminalia bellirica), and Haritaki (Terminalia chebula) in roughly equal parts. It’s used extensively in monastic and household medicine for internal cleansing and long-term health maintenance.

Traditional uses:

• Gentle bowel regulator: used as a mild laxative, to improve bowel regularity and support digestion.
• Detoxifier & rejuvenator (rasayana): believed to support eyes, skin, and systemic vitality.
• Mild antioxidant and immune-supporting formula; used for oral health (gargling) and as a detox after seasonal changes.

Key constituents & pharmacology:

Rich in tannins, polyphenols (gallic acid, ellagic acid), vitamin C (in amla), and chebulinic/chebulagic acids (haritaki). These confer antioxidant, mild astringent, antimicrobial and mild laxative properties. Preclinical and some clinical trials show benefits for constipation, antioxidant markers, and oral health; evidence for systemic uses is mixed but supportive for bowel regularity and mild metabolic effects.

Typical preparations & doses:

Powder (churna): 1–3 g orally once daily (often at night), taken with warm water, honey, or ghee.
Decoction/gargle for oral hygiene.

Safety & cautions:

Usually safe; may cause cramping or diarrhea if taken in excess. Caution with iron absorption (tannins can inhibit absorption) and with concurrent strong laxatives. Pregnancy/lactation: use under supervision.
'''
},
    {
      "title": "Shatavari",
      "image": "assets/images/cw4.png",
      "description": '''Śatavari (Shatavari — Asparagus racemosus)

Shatavari, the “one with a hundred roots,” is a climbing herb used in Ayurveda primarily as a female tonic and adaptogen. Roots are the medicinal part.

Traditional uses:

• Reproductive health: supports female reproductive tissues, used for menstrual regulation, infertility support, postpartum recovery, and lactation (galactagogue).
• Digestive and immune tonic: used as a general restorative (rasayana) for weak digestive fire, loss of appetite, and chronic debility.
• Adaptogen: used to modulate stress responses and maintain hormonal balance.

Key constituents & pharmacology:

Steroidal saponins (shatavarin I–IV), flavonoids, mucilage. Saponins may modulate hormone activity (estrogenic-like effects in animal models), and mucilage offers soothing to mucous membranes. Some small human studies and historical use support lactation benefits and adaptogenic effects; rigorous clinical evidence is limited.

Typical preparations & doses:

Powdered root: 3–6 g daily; decoctions and standardized extracts (e.g., 10:1) are common—follow product instructions.
Often given with milk or warm water for lactation.

Safety & cautions:

Considered safe in recommended doses; possible allergic reactions rare. Use caution in hormone-sensitive cancers due to mild estrogenic effects; use under medical advice if on hormone therapy. Pregnant women should consult a practitioner (traditional use often supports postpartum but may be contraindicated in early pregnancy without guidance).
'''
    },

    {
      "title": "Neem",
      "image": "assets/images/cw5.png",
      "description": '''Neem (Azadirachta indica)

Neem is a large evergreen tree whose leaves, bark, seeds, and oil are used extensively in Indian traditional medicine, skin care, and household hygiene.

Traditional uses:

• Antiparasitic/anthelmintic: seeds and oils used for lice, intestinal worms, and insect repellency.
• Antimicrobial and skin conditions: leaves and oil used for acne, eczema, fungal infections, and wounds.
• Dental hygiene: twig chewing and leaf extracts used for periodontal care.
• Antipyretic and general tonic in folk uses.

Key constituents & pharmacology:

Limonoids (azadirachtin), nimbin, nimbidin, flavonoids, sulfur compounds. Azadirachtin is a potent insect antifeedant/insecticide; nimbidin has antimicrobial/anti-inflammatory properties. Numerous lab studies show antibacterial, antifungal, antiviral, anti-inflammatory and insecticidal effects. Clinical uses include topical treatment for acne/eczema and neem oil for lice; evidence for systemic internal medicinal use is more limited and dosing must be cautious.

Typical preparations & doses:

Topical: leaf poultices, oil applications, herbal washes.
Dental: neem twig or toothpaste with neem extracts.
Internal use: purified extracts used in traditional formulations—internal use should follow practitioner guidance due to toxicity risk in high doses.

Safety & cautions:

Neem oil can be toxic if ingested in high doses (reduced consciousness, vomiting) — severe toxicity reported particularly in infants. Pregnant women should avoid internal neem preparations due to potential abortifacient and uterine effects. Allergic skin reactions possible with topical oils.
'''
    },

    {
      "title": "Giloy",
      "image": "assets/images/cw4.png",
      "description": '''Giloy (Guduchi — Tinospora cordifolia)

Giloy (Guduchi) is a climbing shrub used as a general immune tonic and fever-modulating herb in Ayurveda; it’s frequently cited in traditional monastic medicine for its detoxifying and rejuvenating effects.

Traditional uses:

• Fever management: used in fevers (including recurrent fevers), as an antipyretic and immune modulator.
• Immune tonic and rasayana: supports general vitality, digestion, and recovery after illness.
• Anti-inflammatory and joint support.

Key constituents & pharmacology:

Alkaloids, diterpenoid lactones (tinosporin), glycosides, polysaccharides. Demonstrated immunomodulatory, antipyretic, antioxidant, and anti-inflammatory effects in animal and in-vitro studies. Some small human trials suggest benefits in improving immune markers and improving outcomes in recurrent fevers; evidence is emerging but not definitive.

Typical preparations & doses:

Decoction from stems: typical doses vary (e.g., 10–20 mL decoction 1–2 times daily) or standardized extracts (e.g., 300–500 mg extract once or twice daily) depending on product. Traditional use often mixes with honey, ghee, or other carriers.

Safety & cautions:

Generally well-tolerated in recommended doses; occasional GI upset. Use caution with autoimmune disease or when taking immunosuppressant medications (possible interaction). Monitor blood sugar when used with antidiabetic drugs (may reduce glucose).
'''
    },

    {
      "title": "Arjuna",
      "image": "assets/images/cw1.png",
      "description": '''Arjuna (Terminalia arjuna)

Arjuna is a large deciduous tree whose bark is the primary medicinal part. In Ayurvedic and traditional Indian medicine it is famed for cardiovascular support.

Traditional uses:

• Cardiac tonic: used for angina-type symptoms, palpitations, and to strengthen the heart after illness.
• Circulatory support: used to reduce chest pain and support recovery after heart disease; also used for edema and general circulatory weakness.
• Antioxidant and wound healing in folk use.

Key constituents & pharmacology:

Tannins, flavonoids, glycosides, triterpenoids (arjunolic acid), and saponins. Demonstrated cardioprotective effects in animal models; may have mild hypotensive, lipid-lowering and antioxidant activity. Clinical trials (small) suggest improvements in angina symptoms, left ventricular function markers, lipid profiles, and exercise tolerance in some patients—evidence promising but not large-scale.

Typical preparations & doses:

Bark powder/extracts: commonly standardized extracts 250–500 mg twice daily, or traditional decoctions; many commercial cardiac tonics include arjuna.

Safety & cautions:

Generally well-tolerated. Patients on cardiac medications (beta-blockers, ACE inhibitors, anticoagulants) should use under medical supervision due to possible additive effects. Monitor blood pressure and interactions.
'''
    },
    {
      "title": "Haridra",
      "image": "assets/images/cw2.png",
      "description": '''Haridra / Turmeric (Curcuma longa)

Turmeric (curcuma) is a rhizome widely used as a spice and medicinal herb. Haridra appears in many classical texts as an anti-inflammatory and blood-purifying agent.

Traditional uses:

• Anti-inflammatory: for arthritis, wounds, and skin conditions.
• Digestive: carminative and hepatoprotective uses.
• Antimicrobial and wound healing (topical pastes).

Key constituents & pharmacology:

Curcuminoids (curcumin) — principal active polyphenols — plus volatile oils (tumerone). Curcumin has strong anti-inflammatory and antioxidant activity in lab models; clinical evidence supports modest benefit in osteoarthritis, metabolic markers, and as an adjunct in some inflammatory conditions. Bioavailability is an issue; formulations with piperine (black pepper) or lipid carriers improve absorption.

Typical preparations & doses:

Powdered rhizome as food is safe; therapeutic doses of standardized curcumin extracts range 500–2000 mg/day (curcumin content varies). Traditional topical pastes applied for wounds/skin.

Safety & cautions:

Generally safe in culinary amounts. High-dose supplements may cause GI upset, and curcumin can interact with anticoagulants (potentiate bleeding), antiplatelet drugs, and certain chemotherapy agents. Pregnant women should consult practitioner for medicinal dosing.
'''
    },

    {
      "title": "Guggul",
      "image": "assets/images/cw3.png",
      "description": '''Guggul (Commiphora wightii / gum resin)

Guggul is a resin (gum) harvested from a thorny shrub; it’s a classical Ayurvedic remedy primarily used for lipid metabolism and inflammatory conditions.

Traditional uses:

• Lipid-lowering: used for elevated cholesterol, obesity, and metabolic disorders.
• Anti-inflammatory and joint health: used in arthritis and gout.
• Skin diseases: used in certain dermatologic conditions.

Key constituents & pharmacology:

Guggulsterones (E and Z), resin acids, and volatile oils. Early clinical trials (1990s) suggested guggul may reduce cholesterol, but subsequent mixed results and species-specific differences complicated the picture. Some anti-inflammatory effects are supported; modern formulations standardized to guggulsterones are used for metabolic syndrome adjunct therapy.

Typical preparations & doses:

Resin powder or standardized extracts (dosage varies; many studies used 500 mg two to three times daily standardized extracts). Follow product labeling.

Safety & cautions:

Side effects: GI discomfort, skin rashes. May interact with thyroid hormones (can alter thyroid function tests) and with warfarin/anticoagulants. Pregnancy/lactation: avoid unless supervised.
'''
    },

    {
      "title": "Punarnava",
      "image": "assets/images/cw4.png",
      "description": '''Punarnava (Boerhavia diffusa)

Punarnava (meaning “that which renews the body”) is a creeping herb used in Ayurveda for fluid balance, kidney support, and general rejuvenation.

Traditional uses:

• Diuretic and anti-edematous: used for dropsy/ascites, edema, and urinary disorders.
• Hepatoprotective and anti-inflammatory uses for jaundice and liver weakness.
• Supportive for arthritis and kidney weakness.

Key constituents & pharmacology:

Alkaloids, flavonoids, glycosides (boeravinones), and fatty acids. Demonstrated diuretic, hepatoprotective, anti-inflammatory, and mild immunomodulatory activity in animal studies. Clinical evidence is limited but supportive for diuretic and hepatoprotective roles in traditional practice.

Typical preparations & doses:

Decoction of roots or aerial parts; powdered extracts in varying doses (traditional doses often 3–6 g powder). Modern extracts standardized to boeravinones are used in herbal formulations.

Safety & cautions:

Generally well tolerated; higher doses may cause GI upset. Use with caution with diuretics and drugs affecting electrolytes. Pregnancy/lactation: use under guidance.
'''
    },

    {
      "title": "Aloe Vera",
      "image": "assets/images/cw2.png",
      "description": '''Aloe vera (Aloe barbadensis / Aloe vera)

Aloe vera is a succulent whose inner gel and outer latex have distinct uses. Widely used in traditional and modern medicine for topical skin conditions and as a gentle laxative (latex).

Traditional uses:

• Topical healing: burns, wounds, sunburns, minor abrasions; reputed to speed healing and soothe inflammation.
• Digestive: inner leaf gel used as demulcent; outer latex (aloe) used as a stimulant laxative in traditional formulations (use cautiously).
• Skin and cosmetic uses: moisturiser, anti-inflammatory application.

Key constituents & pharmacology:

Polysaccharides (acemannan), anthraquinones (aloin in latex), glycoproteins, vitamins and minerals. Topical benefits supported for mild burns and wound healing in several studies (reduced healing time in some trials). Internal anthraquinones act as stimulant laxatives but can cause cramping and electrolyte loss; inner leaf gel has prebiotic and soothing properties, but quality varies by preparation.

Typical preparations & doses:

Topical gel applied as needed.
Oral inner-leaf gel: variable dosing; use standardized products. Latex (aloin) oral doses should be used short-term and with caution (and many countries restrict aloin content in OTC products).

Safety & cautions:

Topical: allergic contact dermatitis in some individuals.
Oral latex (aloin): avoid in pregnancy (may induce uterine contractions) and prolonged use (risk of electrolyte disturbance). Ensure products are purified and labeled (decolorized/low-aloin for oral inner-leaf juices).
'''
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF7F0),
        surfaceTintColor: const Color(0xFFFDF7F0),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Ayurveda Medicine 🌿",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: womensCategories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            final item = womensCategories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailScreen11(
                      title: item["title"]!,
                      image: item["image"]!,
                      description: item["description"]!,
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  AutoSizeText(
                    item["title"]!,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    minFontSize: 8,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


class ProductDetailScreen11 extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const ProductDetailScreen11({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Scaffold(
        backgroundColor: const Color(0xFFFDF7F0),
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(color: Colors.black),
          ),
          backgroundColor: const Color(0xFFFDF7F0),
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     // Add to cart or buy logic here
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.green.shade700,
              //     padding:
              //     const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              //   ),
              //   child: const Text(
              //     "Add to Cart",
              //     style: TextStyle(fontSize: 16, color: Colors.white),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}


//
// class WomensClothingScreen extends StatefulWidget {
//   const WomensClothingScreen({super.key});
//
//   @override
//   State<WomensClothingScreen> createState() => _WomensClothingScreenState();
// }
//
// class _WomensClothingScreenState extends State<WomensClothingScreen> {
//   final List<Map<String, String>> womensCategories = const [
//     {"title": "Herbal Remedy", "image": "assets/images/cw1.png"},
//     {"title": "Tulsi", "image": "assets/images/cw2.png"},
//     {"title": "Triphala", "image": "assets/images/cw3.png"},
//     {"title": "Shatavari", "image": "assets/images/cw4.png"},
//     {"title": "Neem", "image": "assets/images/cw5.png"},
//     {"title": "Giloy", "image": "assets/images/cw4.png"},
//     {"title": "Arjuna", "image": "assets/images/cw1.png"},
//     {"title": "Haridra", "image": "assets/images/cw2.png"},
//     {"title": "Guggul", "image": "assets/images/cw3.png"},
//     {"title": "Punarnava", "image": "assets/images/cw4.png"},
//     {"title": "Aloe Vera", "image": "assets/images/cw2.png"},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFDF7F0),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFDF7F0),
//         surfaceTintColor:Color(0xFFFDF7F0),
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text(
//           "Ayurveda Medicine 🌿",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: false,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12),
//         child: GridView.builder(
//           itemCount: womensCategories.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 12,
//             crossAxisSpacing: 12,
//             childAspectRatio: 0.65,
//           ),
//           itemBuilder: (context, index) {
//             final item = womensCategories[index];
//             return Column(
//               children: [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       item["image"]!,
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 AutoSizeText(
//                   item["title"]!,
//                   textAlign: TextAlign.center,
//                   maxLines: 1,
//                   minFontSize: 8,
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


