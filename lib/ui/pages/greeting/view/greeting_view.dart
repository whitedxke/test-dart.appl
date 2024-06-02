import 'index.dart';

part 'components/greeting_view.description_text.part.dart';

class GreetingView extends StatelessWidget {
  const GreetingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      widget: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
            ),
            child: Lottie.asset(
              ImageResource.animationGreetingState,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          _buildDescriptionTextWidget(),
        ],
      ),
    );
  }
}
