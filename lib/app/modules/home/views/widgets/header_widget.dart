import 'package:flutter/material.dart';

class HeaderWiget extends StatelessWidget {
  final String icon, label;
  const HeaderWiget({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 40,
          height: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          label,
          textAlign: TextAlign.left,
          style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Poppins',
              fontSize: 15,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 1),
        )
      ],
    );
  }
}

class Header2 extends StatelessWidget {
  const Header2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
      child: Row(
        children: const [
          Text(
            'Malayalam Live Channels',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Poppins',
                fontSize: 15,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.w600,
                height: 1),
          ),
        ],
      ),
    );
  }
}
