import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  final String title;
  final String genre;
  final String imagePath;
  final double rating;

  const AnimeCard({
    super.key,
    required this.title,
    required this.genre,
    required this.imagePath,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Padding(
        padding: const EdgeInsets.only(left: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    height: 250,
                    child: Image.asset(imagePath, fit: BoxFit.cover),
                  ),
                ),

                // rating
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: Color(0xff5435f8),
                          size: 12,
                        ),
                        Text(
                          rating.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(genre, style: TextStyle(color: Colors.grey, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
