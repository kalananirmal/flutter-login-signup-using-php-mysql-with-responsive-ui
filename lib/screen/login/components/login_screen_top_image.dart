import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_admin/constants.dart';
import 'package:login_admin/responsive.dart';
import 'package:login_admin/widgets/common_text.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (!Responsive.isMobile(context))
              const CommonText(text: 'Welcome Admin !!'),
            const SizedBox(
              height: defaultPadding * 2,
            ),
            Row(
              children: [
                Expanded(
                  child: SvgPicture.asset(
                    'assets/images/re_login.svg',
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding - 5),
            if (!Responsive.isDesktop(context))
              const CommonText(text: 'Welcome Admin !!')
          ],
        ),
      ),
    );
  }
}
