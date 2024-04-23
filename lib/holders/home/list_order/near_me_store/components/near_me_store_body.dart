import 'package:flutter/material.dart';

class NearMeStoreBody extends StatelessWidget {
  const NearMeStoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 2 / 3,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '컴포즈커피 서면 학원점',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('16.3m'),
                    Text('하트, 리뷰'),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20240422_20%2F1713754167905RSx9p_JPEG%2FKakaoTalk_20240322_120809836.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
