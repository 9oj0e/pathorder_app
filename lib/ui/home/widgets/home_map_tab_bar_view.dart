import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:pathorder_app/_core/constants/http.dart';
import 'package:pathorder_app/ui/home/home_page_view_model.dart';
import 'package:pathorder_app/ui/home/store_detail/store_detail_page.dart';

class HomeMapTabBarView extends StatefulWidget {
  HomePageModel model;

  HomeMapTabBarView(this.model);

  @override
  State<HomeMapTabBarView> createState() => _MapOrderPageState();
}

class _MapOrderPageState extends State<HomeMapTabBarView> {
  String? selectedMarkerInfo;
  int? selectedStoreIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NaverMap(
            onMapTapped: (point, latLng) {
              setState(() {
                selectedMarkerInfo = null;
                selectedStoreIndex = null;
              });
            },
            options: const NaverMapViewOptions(
              initialCameraPosition: NCameraPosition(
                target: NLatLng(35.15743361724729, 129.0604337191542),
                zoom: 14,
              ),
            ),
            onMapReady: (controller) {
              widget.model.stores.asMap().forEach((index, store) {
                final marker = NMarker(
                  id: 'marker_$index',
                  position: NLatLng(store.latitude, store.longitude),
                );
                marker.setOnTapListener((overlay) {
                  setState(() {
                    selectedMarkerInfo = store.name;
                    selectedStoreIndex = index;
                  });
                });
                controller.addOverlay(marker);
                final onMarkerInfoWindow = NInfoWindow.onMarker(
                    id: marker.info.id, text: "${store.name}");
                marker.openInfoWindow(onMarkerInfoWindow);
              });

              // print("네이버 맵 로딩됨!");
            },
          ),
          if (selectedMarkerInfo != null && selectedStoreIndex != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoreDetailPage(
                            widget.model.stores[selectedStoreIndex!].id),
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
                              '${baseUrl}/upload/${widget.model.stores[selectedStoreIndex!].imgFilename}',
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
                                '${widget.model.stores[selectedStoreIndex!].name}',
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
                                  Text(
                                    '${widget.model.stores[selectedStoreIndex!].distance}m',
                                    style: TextStyle(color: Colors.grey),
                                  ),
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
                                    ' ${widget.model.stores[selectedStoreIndex!].likeCount}',
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    CupertinoIcons.chat_bubble_text_fill,
                                    color: Color(0xFF020235),
                                    size: 17,
                                  ),
                                  Text(
                                      ' ${widget.model.stores[selectedStoreIndex!].reviewCount}'),
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
