import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_authentication/app/ui/shared/glassmorphism_colors.dart';
import 'package:glassmorphism_authentication/app/ui/views/singup/signup_viewmodel.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glass_button.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glass_input.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glass_sphere.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glassmorphism_container.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
        viewModelBuilder: () => SignUpViewModel(),
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
                          right: -50,
                          top: Get.height * 0.1,
                          width: 200,
                          height: 200,
                        ),
                        GlassSphere(
                          left: -50,
                          bottom: Get.height * 0.075,
                          width: 225,
                          height: 225,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: Get.width * 0.1),
                                GestureDetector(
                                  onTap: model.redirectBack,
                                  child: GlassMorphismContainer(
                                    height: 40,
                                    width: 40,
                                    bottomBorderRadius: 7,
                                    topBorderRadius: 7,
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: GlassmorphismColors.white,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                GlassMorphismContainer(
                                  height: 40,
                                  width: 40,
                                  bottomBorderRadius: 7,
                                  topBorderRadius: 7,
                                  child: Icon(
                                    Icons.notifications,
                                    color: GlassmorphismColors.white,
                                  ),
                                ),
                                SizedBox(width: Get.width * 0.1),
                              ],
                            ),
                            GlassMorphismContainer(
                              height: Get.height * 0.65,
                              width: Get.width * 0.8,
                              bottomBorderRadius: 20,
                              child: Column(
                                children: [
                                  Spacer(),
                                  Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: GlassmorphismColors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  GlassInput(
                                    text: 'Name',
                                    prefixIcon: Icons.person,
                                  ),
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
                                    buttonName: 'Sign Up',
                                    onPressed: () {},
                                    padding: 35,
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                            Text(
                              'By Signing Up you are accepting our terms and conditions',
                              style: TextStyle(
                                  color: GlassmorphismColors.white,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
