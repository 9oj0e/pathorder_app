import 'package:flutter/material.dart';
import 'package:pathorder_app/data/dtos/order_request.dart';
import 'package:pathorder_app/data/store/session_store.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_category.dart';

class MenuOptionCheck extends StatefulWidget {
  final model;
  SessionStore sessionStore;

  MenuOptionCheck(this.model, this.sessionStore, {Key? key}) : super(key: key);

  @override
  State<MenuOptionCheck> createState() => _MenuOptionRadioState();
}

class _MenuOptionRadioState extends State<MenuOptionCheck> {
  List<bool> _isCheckList = [];

  @override
  void initState() {
    super.initState();
    var model = widget.model;
    _isCheckList = List.generate(
      model.optionList.length, // Length of the list
      (index) => false, // Initialize each element to false
    );
  }

  @override
  Widget build(BuildContext context) {
    var model = widget.model;
    SessionStore sessionStore = widget.sessionStore;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuOptionCategory(optionCategory: '선택 옵션'),
        ListView.builder(
          shrinkWrap: true, // ListView의 크기를 내부 컨텐츠에 맞춤
          physics: NeverScrollableScrollPhysics(), //내부 리스트뷰 스크롤 동작 비활성화
          itemCount: model.optionList.length,
          itemBuilder: (context, index) {
            if (!model.optionList[index].required) {
              return ListTile(
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${model.optionList[index].name}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Text(
                      '${model.optionList[index].price}원',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sessionStore.addMenuOptionList(OrderMenuOptionList(
                              name: model.optionList[index].name,
                              price: model.optionList[index].price,
                              required: false));
                          _isCheckList[index] = !_isCheckList[index];
                        });
                      },
                      child: Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          color: Colors.transparent,
                        ),
                        child: _isCheckList[index]
                            ? Icon(
                                Icons.circle,
                                size: 10,
                                color: Colors.grey,
                              )
                            : null,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return SizedBox();
            }
          },
        ),
      ],
    );
  }
}
