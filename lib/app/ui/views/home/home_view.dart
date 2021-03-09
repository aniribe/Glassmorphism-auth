import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_authentication/app/ui/shared/glassmorphism_colors.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glass_button.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glass_sphere.dart';
import 'package:glassmorphism_authentication/app/ui/widgets/glassmorphism_container.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                GlassmorphismColors.purpleBack,
                GlassmorphismColors.blueBack,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: Get.height * 0.20,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'GlassMorphism',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: GlassmorphismColors.white),
                    ),
                  ),
                ),
                GlassSphere(
                  left: 0,
                  right: 0,
                  bottom: Get.height * 0.25,
                  height: 200,
                  width: 200,
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: GlassMorphismContainer(
                    topBorderRadius: 20,
                    height: Get.height * 0.40,
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'New Glassmorphism \nDesign',
                            style: TextStyle(
                                color: GlassmorphismColors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: CustomButton(
                              buttonName: 'Get Started',
                              onPressed: model.redirectToLogin,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
