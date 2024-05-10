import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pathorder_app/data/store/cart_store.dart';

// OrderRequest를 사용하고 싶었지만 통신할때 Request화 혼동올 것 같아서 OrderQuest로 함
class PaymentOrderQuest extends ConsumerWidget {
  const PaymentOrderQuest({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartStore cartStore = ref.read(cartProvider);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              '요청 사항',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "요청 사항을 입력해주세요.",
                hintStyle: TextStyle(fontSize: 12),
              ),
              onChanged: (value) => cartStore.setRequest(value),
            ),
          ],
        ),
      ),
    );
  }
}
