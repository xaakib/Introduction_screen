import 'package:flutter/material.dart';
import 'package:flutter_testing1/donepage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class HomePage extends StatelessWidget {
  final pageDecoration = PageDecoration(
    titleTextStyle:
        PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
    titlePadding: EdgeInsets.all(30),
    imagePadding: EdgeInsets.all(30),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset(
          "assets/images/intro1.jpg",
        ),
        title: "Social Media Connectivety",
        body:
            "This si for testing body title And Some times i wil remake body title for client",
        footer: Text(
          "Xaakib",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset(
          "assets/images/intro2.jpg",
        ),
        title: "Post Checking Page",
        body:
            "This si for testing body title And Some times i wil remake body title for client",
        footer: Text(
          "Xaakib",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset(
          "assets/images/intro3.jpg",
        ),
        title: "Upgrade Your Profile",
        body:
            "This si for testing body title And Some times i wil remake body title for client",
        footer: Text(
          "Xaakib",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset(
          "assets/images/intro4.jpg",
        ),
        title: "Check Where are you ?",
        body:
            "This si for testing body title And Some times i wil remake body title for client",
        footer: Text(
          "Xaakib",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        decoration: pageDecoration,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        curve: Curves.easeInOutQuart,
        pages: getPages(),
        done: Text(
          "Done",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        onDone: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DonePage(),
            ),
          );
        },
      ),
    );
  }
}
