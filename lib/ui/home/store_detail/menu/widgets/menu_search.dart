import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [CupertinoSearchTextField].

void main() => runApp(const MenuSearch());

class MenuSearch extends StatelessWidget {
  const MenuSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: SearchTextFieldExample(),
    );
  }
}

class SearchTextFieldExample extends StatefulWidget {
  const SearchTextFieldExample({super.key});

  @override
  State<SearchTextFieldExample> createState() => _SearchTextFieldExampleState();
}

class _SearchTextFieldExampleState extends State<SearchTextFieldExample> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Container(
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            SearchTextField(
              fieldValue: (String value) {
                setState(() {
                  text = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.fieldValue,
  });

  final ValueChanged<String> fieldValue;

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: (String value) {
        print('The text has changed to: $value');
      },
      onSubmitted: (String value) {
        print('Submitted text: $value');
      },
    );
  }
}
