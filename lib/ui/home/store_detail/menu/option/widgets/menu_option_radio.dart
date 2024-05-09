import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/home/store_detail/menu/option/widgets/menu_option_category.dart';

class MenuOptionRadio extends StatefulWidget {
  final model;

  const MenuOptionRadio(this.model, {Key? key}) : super(key: key);

  @override
  State<MenuOptionRadio> createState() => _MenuOptionRadioState();
}

class _MenuOptionRadioState extends State<MenuOptionRadio> {
  var _groupValue = '선택';

  @override
  Widget build(BuildContext context) {
    var model = widget.model;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MenuOptionCategory(optionCategory: '필수 옵션'),
        ListView.builder(
          shrinkWrap: true, // ListView의 크기를 내부 컨텐츠에 맞춤
          physics: NeverScrollableScrollPhysics(), //내부 리스트뷰 스크롤 동작 비활성화
          itemCount: model.optionList.length,
          itemBuilder: (context, index) {
            if (model.optionList[index].required) {
              return ListTile(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 8), // Adjust padding as needed
                title: Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
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
                    Radio<String>(
                      activeColor: Colors.grey,
                      hoverColor: Colors.grey,
                      value: model.optionList[index].name,
                      groupValue: _groupValue,
                      onChanged: (value) {
                        setState(() {
                          _groupValue = value!;
                        });
                      },
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
