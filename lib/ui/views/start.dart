import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/widgets/buttons.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg-img4.jpg',
              color: Colors.black.withOpacity(0.4),
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 50.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Fashiony\nmodern fashion shop.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.038,
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: height * 0.07,
                          child: RoutingButton(
                            text: 'Login',
                            bgColor: Colors.black.withOpacity(0.7),
                            textColor: Colors.white,
                            pageType: 'start',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: height * 0.07,
                          child: RoutingButton(
                            text: 'Sign up',
                            bgColor: Colors.yellow,
                            pageType: 'start',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
