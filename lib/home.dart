import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/text_with_underline.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text = "Why work me?";
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFDDDEDE),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildHeader(context),
                  Container(
                    height: MediaQuery.of(context).size.height * 1.5,
                    child: Stack(
                      children: [
                        _buildImage(context),
                        _buildSlogan(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildSlogan(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 64.0),
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Text(
            "let's talk\n       design",
            style:
                Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 196),
          ),
          Container(
            padding: EdgeInsets.only(top: 80),
            width: 250,
            height: 200,
            child: Text(
              "Here will go a small intro paragraph that talks about the way we see design in the studio.",
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Positioned _buildImage(BuildContext context) {
    return Positioned(
      top: 450,
      left: 400,
      child: Container(
        child: Image.asset(
          "assets/photo.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 64),
      height: 200,
      child: Row(
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
      ),
    );
  }
}
