import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "아메리카노",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Americano",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  "1,500원",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Image.network(
              "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fdnvefa72aowie.cloudfront.net%2Forigin%2Farticle%2F202403%2Fe29efb38fd8a4b642ad165cbd5f46154edb6d123b68969c6db4c10b047eeb336.jpg%3Fq%3D95%26s%3D1440x1440%26t%3Dinside&type=a340"
            ),
          ],
        ),
      ),
    );
  }
}
