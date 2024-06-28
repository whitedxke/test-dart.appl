import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_resource.dart';
import '../../../../core/resources/string/string_resource.dart';
import '../../../../core/resources/text/text_height_resource.dart';
import '../../../../core/resources/text/text_style_resource.dart';
import '../../../widgets/base_page_widget.dart';

part 'onboarding_view.description_text.part.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingProtocol _protocol;

  const OnboardingView({
    super.key,
    required OnboardingProtocol protocol,
  }) : _protocol = protocol;

  @override
  Widget build(BuildContext context) {
    return BasePageWidget(
      widget: SafeArea(
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
      inverse: false,
    );
  }
}

abstract class OnboardingProtocol {
  void onNavigateToHomePage();
}
