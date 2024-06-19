import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_resource.dart';
import '../../../../core/resources/string/string_resource.dart';
import '../../../../core/resources/text/text_height_resource.dart';
import '../../../../core/resources/text/text_style_resource.dart';

part 'onboarding_view.description_text.part.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDescriptionTextWidget(),
              Padding(
                padding: EdgeInsets.only(
                  top: 48.h,
                ),
                // TODO: Description:
                // [Over time, add a button and the logic for it].
                child: Container(
                  color: ColorResource.white,
                  height: 150.h,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class OnboardingProtocol {}
