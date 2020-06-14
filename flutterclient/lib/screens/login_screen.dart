import 'package:flutterclient/animations/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutterclient/screens/home_screens.dart';
import 'package:flutterclient/screens/business_home_screen.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Colors.yellow[100],
        body: Container(
            width: double.infinity,
            child: Stack(
                children: <Widget>[
                  Positioned(
                      top: -100,
                      left: 0,
                      child: FadeAnimation(1, Container(
                          width: width,
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/one.png'),
                                fit: BoxFit.cover,
                              )
                          )
                      ))
                  ),
                  Positioned(
                      top: -150,
                      left: 0,
                      child: FadeAnimation(1.3, Container(
                          width: width,
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/one.png'),
                                fit: BoxFit.cover,
                              )
                          )
                      ))
                  ),
                  Positioned(
                    top: -200,
                    left: 0,
                    child: FadeAnimation(1.6, Container(
                        width: width,
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/one.png'),
                              fit: BoxFit.cover,
                            )
                        )
                    )),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: loginContent(),
                  ),
                ]
            )
        ),
    );
  }
}

/*

return Scaffold(
      backgroundColor: Color(0xff161616),
      body: Container(
        padding: EdgeInsets.all(30),
        child: loginContent(),
      ),
    );

 */

class loginContent extends StatelessWidget {
  TextEditingController phoneController = new TextEditingController();

   loginContent({
    Key key,
  }) : super(key: key);


/*  void _navigateToHomeScreen() {
    if(phoneController.text.isEmpty || phoneController.text.contains('123')) {
      Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HomeScreen()));
    } else {
      Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HomeScreen()));
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FadeAnimation(1.2, Text("Login",
          style: TextStyle(color: Colors.redAccent, fontSize: 40, fontWeight: FontWeight.bold),)),
        SizedBox(height: 30,),
        FadeAnimation(1.5, Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[300]))
                ),
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                      hintText: "Phone number"
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                      hintText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
            ],
          ),
        )),
        SizedBox(height: 50,),
        Container(
          alignment: Alignment.center,
          child: SizedBox(width: 260,
            child:
            FadeAnimation(1.8, Center(
              child: RaisedButton(
                onPressed: () {
                  if (phoneController.text.isEmpty ||
                      phoneController.text.contains('123')) {
                    Navigator.push(context, PageTransition(
                        type: PageTransitionType.fade, child: HomeScreen()));
                  } else {
                    Navigator.push(context, PageTransition(
                        type: PageTransitionType.fade, child: BusinessHomeScreen()));
                  };
                },
                 // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HomeScreen()));},
                //onPressed: _navigateToHomeScreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.redAccent)
                ),
                color: Colors.redAccent,
                padding: EdgeInsets.all(15),
                child: Center(child: Text("Continue", style: TextStyle(color: Colors.white),)),
              ),
            )),
          ),
        ),
      ],
    );
  }
}