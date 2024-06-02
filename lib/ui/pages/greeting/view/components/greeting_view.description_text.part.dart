part of '../greeting_view.dart';

Widget _buildDescriptionTextWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            top: 16.h,
            right: 16.w,
            bottom: Constraints.getBottomWidgetInset(value: 24.h),
          ),
          child: Text(
            StringResource.greetingDescriptionString,
            style: TextStyleResource.white16(
              weight: FontWeight.w400,
              height: TextHeightResource.description,
            ),
          ),
        ),
      ),
    ],
  );
}
