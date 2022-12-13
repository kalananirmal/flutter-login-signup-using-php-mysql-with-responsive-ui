import 'package:flutter/material.dart';

import 'package:login_admin/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/widgets.dart';
import 'package:login_admin/responsive.dart';
import 'package:login_admin/widgets/common_text.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!Responsive.isMobile(context)) const CommonText(text: 'Welcome to Admin Panel !!'),
         const SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            Expanded(
              child: SvgPicture.asset(
                'assets/images/hello.svg',
                height: 200,
                width: 100,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding - 5,
        ),
        if (!Responsive.isDesktop(context))
          const CommonText(text: 'Welcome to Admin Panel !!'),

        const SizedBox(
          height: defaultPadding *4,
        ),
      ],
    );
  }
}
