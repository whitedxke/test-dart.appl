import 'index.dart';

class Constraints {
  // A method for getting the bottom indentation of a widget given the inset.
  static double getBottomWidgetInset({
    required double value,
  }) {
    // Get the data for the current window and extract the indents,
    // in particular the vertical indent.
    final padding = MediaQueryData.fromView(WidgetsBinding.instance.window).padding.h;
    // Get the bottom margin of the screen.
    final inset = padding.bottom;
    final difference = value - inset;
    if (difference > 0) {
      return difference;
    } else {
      return 0.h;
    }
  }
}
