import 'package:flutter/material.dart';
import 'package:introduction/datas/social_media_icons.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Column(
        children: [
          const Text(
            'Or continue with',
            style: TextStyle(
              color: Color(0xff1F41BB),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < SocialMediaIcons.icons.length; i++)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SizedBox(
                    height: 40,
                    width: 56,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Color(0xffECECEC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Image.asset(SocialMediaIcons.icons[i].icon),
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
