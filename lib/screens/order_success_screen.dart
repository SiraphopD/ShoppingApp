import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/navigation_screen.dart';
import 'package:shoppingapp/widgets/container_button_modal.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                "images/success.png",
                height: 200,
              ),
              SizedBox(height: 15),
              Text(
                "Success!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your order will be delivered soon.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
              Text(
                "Thank You! for choosing our app.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => NavigationScreen()),
                    ));
              },
              child: ContainerButtonModel(
                itext: "Continue Shopping",
                containerWidth: MediaQuery.of(context).size.width,
                bgColor: Color(0xFFDB3022),
              ),
            ),
          )
        ],
      ),
    );
  }
}
