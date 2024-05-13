import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(35.1595990016, 129.060227846),
                  zoom: 20,
                ),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
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
