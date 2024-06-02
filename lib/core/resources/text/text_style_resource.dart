import 'index.dart';

class TextStyleResource {
  static const _baseTextFamily = 'Roboto';

  static final TextStyle _base = TextStyle(
    fontFamily: _baseTextFamily,
    color: ColorResource.white,
    fontSize: TextSizeResource.fontSize14,
  );

  // ---- White.

  static TextStyle white14({
    required FontWeight weight,
    required TextHeightResource height,
  }) {
    return _base.merge(
      TextStyle(
        fontWeight: weight,
        height: height.value,
      ),
    );
  }

  static TextStyle white16({
    required FontWeight weight,
    required TextHeightResource height,
  }) {
    return _base.merge(
      TextStyle(
        fontWeight: weight,
        height: height.value,
        fontSize: TextSizeResource.fontSize16,
      ),
    );
  }

  // ---- Black.

  static TextStyle black14({
    required FontWeight weight,
    required TextHeightResource height,
  }) {
    return _base.merge(
      TextStyle(
        color: ColorResource.black,
        fontWeight: weight,
        height: height.value,
      ),
    );
  }
}
