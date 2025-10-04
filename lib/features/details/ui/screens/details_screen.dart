import 'package:anime_app/features/details/ui/widgets/pink_circle.dart';
import 'package:anime_app/features/details/ui/widgets/type_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // These are the background elements that will stay fixed.
          Container(color: const Color(0xff1c0e3e)),
          Positioned(bottom: 250, right: -50, child: PinkCircle()),
          Positioned(bottom: 50, left: -50, child: PinkCircle()),

          // This SingleChildScrollView makes all its children scrollable together.
          SingleChildScrollView(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // This Column holds the main scrollable content, laid out vertically.
                Column(
                  children: [
                    // The header background image, now directly in the Column.
                    Image.asset(
                      'assets/images/details/details_bg.png',
                      width: double.infinity, // Make image take full width
                      fit: BoxFit.cover,
                    ),

                    // This Container holds the rest of your content.
                    Container(
                      width: double.infinity,
                      color: const Color(0xff2c1e51).withAlpha(150),
                      child: Column(
                        children: [
                          // This SizedBox creates the necessary space for the
                          // overlapping logo from the Stack above.
                          const SizedBox(height: 100),

                          // Content Tiles
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              TypeTile(type: 'Dark Fantasy'),
                              SizedBox(width: 12),
                              TypeTile(type: 'Action'),
                              SizedBox(width: 12),
                              TypeTile(type: 'Adventure'),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Divider(
                            endIndent: 20,
                            indent: 20,
                            color: Colors.white54,
                          ),
                          const SizedBox(height: 20),

                          // Stats Section (Views, Claps, Seasons)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  // I've replaced SvgPicture with a placeholder Icon
                                  // in case you don't have the asset.
                                  const Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 7),
                                  const Text(
                                    '2.3M views',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 7),
                                  const Text(
                                    '2K clap',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.movie_filter_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 7),
                                  const Text(
                                    '4 Seasons',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Divider(
                            endIndent: 20,
                            indent: 20,
                            color: Colors.white54,
                          ),
                          const SizedBox(height: 20),

                          // Description Section
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/details/fire.png',
                                  width: 30,
                                ),
                                const SizedBox(width: 8),
                                const Flexible(
                                  child: Text(
                                    'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      height:
                                          1.5, // Improved line spacing for readability
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Added some padding at the bottom for better scroll feel
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ],
                ),
                // The logo is now the last child of the Stack, ensuring it is drawn
                // on top of the Column. We position it from the top.
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 2 - 80,
                  child: Image.asset(
                    'assets/images/details/details_logo.png',
                    width: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
