import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_authentication/app/ui/shared/glassmorphism_colors.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glass_button.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glass_input.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glass_sphere.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glassmorphism_container.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: Get.width,
              height: Get.height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    GlassmorphismColors.purpleBack,
                    GlassmorphismColors.blueBack,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  GlassSphere(
                    left: -50,
                    top: Get.height * 0.1,
                    width: 200,
                    height: 200,
                  ),
                  GlassSphere(
                    right: -50,
                    bottom: Get.height * 0.075,
                    width: 225,
                    height: 225,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        margin:
                            EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                        child: GlassMorphismContainer(
                          height: 40,
                          width: 40,
                          bottomBorderRadius: 7,
                          topBorderRadius: 7,
                          child: Icon(
                            Icons.notifications,
                            color: GlassmorphismColors.white,
                          ),
                        ),
                      ),
                      GlassMorphismContainer(
                        height: Get.height * 0.65,
                        width: Get.width * 0.8,
                        bottomBorderRadius: 20,
                        child: Column(
                          children: [
                            Spacer(),
                            Text(
                              'Sign In',
                              style: TextStyle(
                                  color: GlassmorphismColors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            GlassInput(
                              text: 'Email',
                              prefixIcon: Icons.email,
                            ),
                            GlassInput(
                              text: 'Password',
                              prefixIcon: Icons.vpn_key,
                              suffixIcon: Icons.remove_red_eye,
                              isObscure: true,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomButton(
                              buttonName: 'Sign In',
                              onPressed: () {},
                              padding: 35,
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: model.redirectToSignUp,
                        child: GlassMorphismContainer(
                          height: 50,
                          width: Get.width * 0.8,
                          topBorderRadius: 10,
                          bottomBorderRadius: 10,
                          child: Center(
                              child: Text(
                            'Don\'t Have Account, CLICK HERE',
                            style: TextStyle(
                                color: GlassmorphismColors.white, fontSize: 12),
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
