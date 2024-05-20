import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/like/widgets/like_store_list.dart';

class LikeBody extends StatefulWidget {
  const LikeBody({super.key});

  @override
  State<LikeBody> createState() => _LikeBodyState();
}

class _LikeBodyState extends State<LikeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: double.infinity,
                  height: 125,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      'https://www.sisa-news.com/data/photos/20210205/art_161214153595_ed5d5e.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Text('패써님이 자주가는 매장이에요!'),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          LikeStoreList(),
        ],
      ),
    );
  }
}
