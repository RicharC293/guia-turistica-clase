import 'package:flutter/material.dart';

import '../../../core/widgets/custom_button.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(0, 2)),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            child: Image.network(
              'https://st.depositphotos.com/1016440/2534/i/450/depositphotos_25344733-stock-photo-sunrise-at-the-beach.jpg',
              height: MediaQuery.of(context).size.height * 0.40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  icon: Icons.arrow_back_ios,
                  alignment: Alignment.centerRight,
                  onPressed: () => Navigator.pop(context),
                ),
                CustomButton(
                  icon: Icons.favorite_border,
                  onPressed: () {
                    print("Like");
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
