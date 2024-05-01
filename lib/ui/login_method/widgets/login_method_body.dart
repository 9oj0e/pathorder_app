import 'package:flutter/material.dart';
import 'package:pathorder_app/ui/login_method/widgets/login_method_buttons.dart';
import 'package:pathorder_app/ui/login_method/widgets/login_method_pop_button.dart';

class LoginMethodBody extends StatelessWidget {
  const LoginMethodBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAyMDJfMTUx%2FMDAxNzA2ODUyNjAzNDIy.h68OmVROTRpHZOhiwXEBbh3CF-z46gHFok14OUq6PvYg.RcovBOYYY3WhiBlzgeb9HBW2qTsOYiGGTfKAo-XxONAg.JPEG.ws4501%2F1706852511105.jpg&type=sc960_832',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.5), // 투명도가 있는 검은색
          width: double.infinity,
          height: double.infinity,
        ),
        LoginMethodButtons(),
        LoginMethodPopButton(),
      ],
    );
  }
}
