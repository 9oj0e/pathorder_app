import 'package:flutter/cupertino.dart';

import 'home_nearby_me_store.dart';
import 'home_nearby_me_text.dart';

class HomeNearbyMe extends StatelessWidget {
  const HomeNearbyMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeNearbyMeText(),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeNearbyMeStore(
                      cafeName: "가나다",
                      distance: 100,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAzMDlfMTgz%2FMDAxNzA5OTgyMzUwNzA5.kKNIC6ZE54RIq6NEnt-JKm8f50354cWHmtOMU-Weq8Qg.8a8GpOOcpYT2WxohiegrRHjDmV0Pc559PosiU2z66g4g.JPEG%2FKakaoTalk_20240226_094748288_06.jpg&type=a340'),
                  HomeNearbyMeStore(
                      cafeName: "초콜릿",
                      distance: 230,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAzMDFfMjEx%2FMDAxNzA5Mjg1NzMwNTM5.sR6SX4c8NF_C6W3NoXzYH6-NRtwPJe9G2exc8wdAjnog.ujI8FdaqiNHh_vt0JmsPyoXRVTPRY5QnflMVmcHE8j0g.JPEG%2FIMG_3933.JPG&type=a340'),
                  HomeNearbyMeStore(
                      cafeName: "하이",
                      distance: 352,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzAyMjdfMjM1%2FMDAxNjc3NDkyOTEwMTc0.iWlrMbmJFMk2MV4UEGQxAUFaZoKmp_MiGgYoo2bdwkQg.Y5w-ePE2kPACByzQCDUryTtlS0TtCE-bAcLEAHIqnCMg.JPEG.wltjsyoon123%2F1677409010930.jpg&type=a340'),
                  HomeNearbyMeStore(
                      cafeName: "와썹",
                      distance: 56,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjEyMTRfMTQ3%2FMDAxNjcxMDIzODI0NjE1.r0D5kaxO3XPmHC9xPkft3-VXlx4qOuVRXU69ymUN9pcg.upHRS1qKME2yXnRnKD9fdjmm3PhA23DWASQ6Bks0xhwg.JPEG.requiemfor%2FIMG_2683.jpg&type=a340'),
                  HomeNearbyMeStore(
                      cafeName: "오웅",
                      distance: 123,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMjFfMTM5%2FMDAxNTg0Nzg4NzEwMzY0.zH6rgM9MMhOraubQeM4AJd2LZMchMtx-M6DlLezKuGwg.hh6CudEBhk3Q9gYJvfd6MzSl4BPGArUAn1H1F_0pksAg.JPEG.supar94%2FKakaoTalk_20200321_101814421_18.jpg&type=a340'),
                  HomeNearbyMeStore(
                      cafeName: "큐티와이",
                      distance: 241,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                          'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MzBfMjM5%2FMDAxNjI3NjAyNzc2NzEw.geshECV5FbVDwivurPRXBrVr3iIbCwZ3VPExvquQ43Ag.G_W8JM_7MxqlgX2RkQov9H511E2F_haXbDnv0uGE13wg.JPEG.nobbang222%2FIMG_17383.JPG&type=a340'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
