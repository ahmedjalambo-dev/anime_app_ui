import 'package:flutter/material.dart';

class TopCharacters extends StatelessWidget {
  const TopCharacters({super.key, required this.characters});
  final List<Map> characters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 20,
            children: characters.map((character) {
              return Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(character['imagePath']!),
                  ),
                  SizedBox(height: 8),
                  Text(
                    character['name']!,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    character['anime']!,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
