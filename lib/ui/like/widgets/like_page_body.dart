import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pathorder_app/models/near_me_store_menu.dart';
import 'package:pathorder_app/ui/home/store_list/near_me_store/widgets/near_me_store_body.dart';

class LikePageBody extends StatelessWidget {
  const LikePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, _) {
        return [
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Container(
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
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    Text('패써님이 자주가는 매장이에요!'),
                  ],
                ),
              ),
            ]),
          ),
        ];
      },
      body: NearMeStoreBody(nearMeStoreMenu1),
    );
  }
}
