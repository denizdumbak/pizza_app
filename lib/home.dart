import 'package:flutter/material.dart';
import 'package:pizza_app/color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final screenHeight = screenInfo.size.height;
    final screenWidth = screenInfo.size.width;
    print("Height: $screenHeight");
    print("Width: $screenWidth");

    var d = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pizza",
          style: TextStyle(
              color: textColor1,
              fontFamily: "Pacifico",
              fontSize: screenHeight / 35),
        ),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 30),
            child: Text(
              d!.pizzaBaslik,
              style: TextStyle(
                  fontSize: screenHeight / 20,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 35),
            child: Image.asset("images/pizza_resim.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(
                  content: d.peynirYazi,
                ),
                Chip(
                  content: d.sucukYazi,
                ),
                Chip(
                  content: d.sosYazi,
                ),
                Chip(
                  content: d.biberYazi,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 35),
            child: Column(
              children: [
                Text(
                  d.sureYazi,
                  style: TextStyle(
                      color: textColor2,
                      fontSize: screenHeight / 35,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(screenHeight / 35),
                  child: Text(
                    d.teslimatYazi,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: screenHeight / 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  d.sloganYazi,
                  style: TextStyle(
                    color: textColor2,
                    fontSize: screenHeight / 35,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight / 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  d.fiyat,
                  style: TextStyle(
                      fontSize: screenHeight / 20,
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: screenWidth / 2,
                  height: screenHeight / 12,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                    child: Text(
                      d.sepetButton,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: textColor1,
                          fontSize: screenHeight / 35),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  final String content;

  const Chip({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: primaryColor),
      child: Text(content, style: TextStyle(color: textColor1)),
    );
  }
}
