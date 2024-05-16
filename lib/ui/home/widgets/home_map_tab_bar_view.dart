import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/ui/home/store_detail/store_detail_page.dart';

class HomeMapTabBarView extends StatefulWidget {
  const HomeMapTabBarView({super.key});

  @override
  State<HomeMapTabBarView> createState() => _MapOrderPageState();
}

class _MapOrderPageState extends State<HomeMapTabBarView> {
  String? selectedMarkerInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NaverMap(
            onMapTapped: (point, latLng) {
              setState(() {
                selectedMarkerInfo = null;
              });
            },
            options: const NaverMapViewOptions(
              initialCameraPosition: NCameraPosition(
                target: NLatLng(35.1595990016, 129.060227846),
                zoom: 15,
              ),
            ),
            onMapReady: (controller) {
              final marker = NMarker(
                id: 'test',
                position: NLatLng(35.1595990016, 129.060227846),
              );
              marker.setOnTapListener((overlay) {
                setState(() {
                  selectedMarkerInfo = "멋쟁이 사자처럼";
                });
              });
              controller.addOverlay(marker);
              print("네이버 맵 로딩됨!");
            },
          ),
          if (selectedMarkerInfo != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoreDetailPage(1),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            child: Image.network(
                              '${baseUrl}/upload/default/cafe1.png',
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '텐퍼센트커피 서면 서전로점',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(height: 3),
                                      Icon(
                                        CupertinoIcons.clock,
                                        size: 16,
                                        color: Colors.deepOrangeAccent,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    ' 지금 수령',
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    children: [
                                      SizedBox(height: 2),
                                      Icon(
                                        CupertinoIcons.placemark_fill,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  Text('162.4m'),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.heart_solid,
                                    color: Colors.deepOrangeAccent,
                                    size: 17,
                                  ),
                                  Text(
                                    ' 1147',
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    CupertinoIcons.chat_bubble_text_fill,
                                    color: Color(0xFF020235),
                                    size: 17,
                                  ),
                                  Text(' 1258'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
