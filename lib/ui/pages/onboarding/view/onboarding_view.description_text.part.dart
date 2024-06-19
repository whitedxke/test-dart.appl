part of 'onboarding_view.dart';

Widget _buildDescriptionTextWidget() {
  return Expanded(
    child: SingleChildScrollView(
      padding: EdgeInsets.zero,
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 16.h,
            ),
            child: Text(
              StringResource.copyrightNotice,
              style: TextStyleResource.white18(
                weight: FontWeight.w400,
                height: TextHeightResource.text,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 32.h,
            ),
            child: Text(
              StringResource.licenseTex,
              style: TextStyleResource.white18(
                weight: FontWeight.w400,
                height: TextHeightResource.text,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 16.h,
            ),
            child: Text(
              StringResource.disclaimerText,
              style: TextStyleResource.white18(
                weight: FontWeight.w400,
                height: TextHeightResource.text,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
