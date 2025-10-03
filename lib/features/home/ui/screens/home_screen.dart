import 'package:anime_app/features/home/ui/widgets/category_tab_bar.dart';
import 'package:anime_app/features/home/ui/widgets/top_characters.dart';
import 'package:anime_app/features/home/ui/widgets/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int selectedIndex = 0;
  late TabController _tabController;
  final List<String> categories = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
    'Upcoming',
  ];
  final characters = [
    {
      'name': 'Gon Freecss',
      'anime': 'Hunter x Hunter',
      'imagePath': 'assets/images/characters/1.png',
    },
    {
      'name': 'Naruto Uzumaki',
      'anime': 'Naruto',
      'imagePath': 'assets/images/characters/2.png',
    },
    {
      'name': 'Luffy',
      'anime': 'One Piece',
      'imagePath': 'assets/images/characters/3.png',
    },
    {
      'name': 'Naruto Uzumaki',
      'anime': 'Naruto',
      'imagePath': 'assets/images/characters/5.png',
    },
    {
      'name': 'Gon Freecss',
      'anime': 'One Piece',
      'imagePath': 'assets/images/characters/4.png',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: categories.length,
      vsync: this,
      initialIndex: selectedIndex,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,
                    colors: [Color(0xffdee3ff), Color(0xfff9f8fd)],
                  ),
                ),
              ),
              Positioned(
                right: -200,
                top: -100,
                child: SvgPicture.asset('assets/svgs/star1.svg', width: 450),
              ),
            ],
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // app bar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 23,
                    horizontal: 14,
                  ),
                  child: Text(
                    'Where Anime Comes Alive',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),

                // tab bar
                CategoryTabBar(
                  categories: categories,
                  selectedIndex: 0,
                  tabController: _tabController,
                  onTabChanged: (value) {},
                ),

                // anime cards
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimeCard(
                        title: 'Detective Conan',
                        genre: 'Mystery',
                        imagePath: 'assets/images/posters/1.png',
                        rating: 5.0,
                      ),
                      AnimeCard(
                        title: 'Hunter x Hunter',
                        genre: 'Adventure',
                        imagePath: 'assets/images/posters/2.png',
                        rating: 5.0,
                      ),
                      AnimeCard(
                        title: 'Dragon Ball Z',
                        genre: 'Adventure',
                        imagePath: 'assets/images/posters/3.png',
                        rating: 5.0,
                      ),
                    ],
                  ),
                ),

                // top characters
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 24,
                  ),
                  child: Text(
                    'Top Characters',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: TopCharacters(characters: characters),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
