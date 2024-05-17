import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/menu_page.dart';
import 'package:pathorder_app/ui/home/store_detail/widgets/store_detail_body.dart';

class StoreDetailPage extends StatefulWidget {
  int storeId;

  StoreDetailPage(this.storeId);

  @override
  State<StoreDetailPage> createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // TabBar에 표시할 탭 수
      child: Scaffold(
        backgroundColor: Colors.white,
        body: StoreDetailBody(widget.storeId),
        bottomNavigationBar: _buildBottomAppBar(context),
      ),
    );
  }

  BottomAppBar _buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      height: 90,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.deepOrangeAccent,
        ),
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => MenuPage(widget.storeId)));
          },
          child: Center(
            child: Text(
              "주문하기",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
