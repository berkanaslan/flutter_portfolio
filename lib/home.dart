import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/text_with_underline.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text = "Why work me?";
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFFDDDEDE),
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Ollie",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 30,
                    direction: Axis.horizontal,
                    children: [
                      TextWithUnderline(text: "Design"),
                      Text("Strategy"),
                      Text("Cases"),
                      Text("About"),
                      Text("Why work with me?"),
                    ],
                  ),
                  TextWithUnderline(text: "Lets work together"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
