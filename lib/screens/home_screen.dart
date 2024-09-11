import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            "BALANCE",
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kshs. 476,000",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 7,
            ),
            FaIcon(
              FontAwesomeIcons.eyeSlash,
              size: 14,
              color: Color.fromARGB(255, 111, 111, 111),
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.arrowRightFromBracket,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text("SEND AND REQUEST"),
              ],
            )
          ],
        )
      ],
    );
  }
}
