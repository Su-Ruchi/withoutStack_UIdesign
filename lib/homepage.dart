import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Winners",
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.transparent,
       // leading: FaIcon(FontAwesomeIcons.list),
        centerTitle: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
        colorFilter:ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.dstATop),
            image: AssetImage("asset/image/background.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "\t\t\t For The Real Winners, \n"
                  "There Are No Finish Lines....",
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.brown[900],
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
