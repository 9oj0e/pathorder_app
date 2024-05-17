import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:pathorder_app/ui/home/store_detail/business_info/business_info_page.dart';

class StoreDetailInfo extends StatelessWidget {
  const StoreDetailInfo({
    super.key,
    required this.intro,
    required this.name,
    required this.openingTime,
    required this.closingTime,
    required this.closedDay,
    required this.address,
    required this.storeId,
    required this.latitude,
    required this.longitude,
  });

  final intro;
  final name;
  final openingTime;
  final closingTime;
  final closedDay;
  final address;
  final storeId;
  final latitude;
  final longitude;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${intro}!', style: TextStyle(color: Colors.grey[700])),
            SizedBox(height: 10),
            Text(
              '* 유의사항 : ${name} 포인트 중복 적립 불가',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('혜택'),
                SizedBox(width: 40),
                Text('10개 적립 시 2,000원 할인 쿠폰 제공'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('영업시간'),
                SizedBox(width: 16),
                Text('${openingTime}~${closingTime}'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('휴무일'),
                SizedBox(width: 29),
                Text('${closedDay}'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('전화번호'),
                SizedBox(width: 16),
                Text('0518195485'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              // TODO : 오버플로우 해결
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('주소'),
                SizedBox(width: 40),
                Expanded(
                  child: Text(
                    '${address}',
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
            Row(
              children: [
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BusinessInfoPage(storeId, name),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        '사업자 정보',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: NaverMap(
                options: NaverMapViewOptions(
                  initialCameraPosition: NCameraPosition(
                    target: NLatLng(latitude, longitude),
                    zoom: 16,
                  ),
                ),
                onMapReady: (controller) {
                  final marker = NMarker(
                    id: 'marker',
                    position: NLatLng(latitude, longitude),
                  );
                  controller.addOverlay(marker);
                  final onMarkerInfoWindow =
                      NInfoWindow.onMarker(id: marker.info.id, text: "${name}");
                  marker.openInfoWindow(onMarkerInfoWindow);
                },
              ),
            )
          ],
        ),
      ]),
    );
  }
}
