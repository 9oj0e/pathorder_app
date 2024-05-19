import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pathorder_app/data/store/cart_store.dart';
import 'package:pathorder_app/ui/home/store_detail/store_detail_view_model.dart';

class PaymentStoreLocation extends ConsumerWidget {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.read(cartProvider);
    StoreDetailModel? model =
        ref.watch(storeDetailProvider(cartStore.storeId!));

    if (model == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.green,
              child: NaverMap(
                options: NaverMapViewOptions(
                  initialCameraPosition: NCameraPosition(
                    target: NLatLng(
                        model.store.latitude + 0.00035, model.store.longitude),
                    zoom: 16,
                  ),
                ),
                onMapReady: (controller) {
                  final marker = NMarker(
                    id: 'marker',
                    position:
                        NLatLng(model.store.latitude, model.store.longitude),
                  );
                  controller.addOverlay(marker);
                  final onMarkerInfoWindow = NInfoWindow.onMarker(
                      id: marker.info.id, text: "${model.store.name}");
                  marker.openInfoWindow(onMarkerInfoWindow);
                },
              ),
            ),
            SizedBox(height: 10),
            Text('${model.store.name}'),
            Row(
              children: [
                Icon(
                  CupertinoIcons.placemark_fill,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    '${model.store.address}',
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }
  }
}
