import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

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
      body: NaverMap(
        options: const NaverMapViewOptions(
            locationButtonEnable: true,
            initialCameraPosition: NCameraPosition(
                target: NLatLng(35.1595990016, 129.060227846), zoom: 15)),
        onMapReady: (controller) {
          final marker = NMarker(
              id: 'test', position: NLatLng(35.1595990016, 129.060227846));
          controller.addOverlayAll({marker});

          final onMarkerInfoWindow =
              NInfoWindow.onMarker(id: marker.info.id, text: "멋쟁이 사자처럼");
          marker.openInfoWindow(onMarkerInfoWindow);
          print("네이버 맵 로딩됨!");
        },
      ),
    );
  }
}
