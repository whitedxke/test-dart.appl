import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/resources/image_resource.dart';
import '../../../../core/resources/string/string_resource.dart';
import '../../../../core/resources/text/text_height_resource.dart';
import '../../../../core/resources/text/text_style_resource.dart';
import '../../../../core/utils/constraints.dart';
import '../../../widgets/parent_widget.dart';
import '../bloc/greeting_bloc.dart';

part 'components/greeting_view.description_text.part.dart';

class GreetingView extends StatefulWidget {
  const GreetingView({super.key});

  @override
  State<GreetingView> createState() => _GreetingViewState();
}

class _GreetingViewState extends State<GreetingView> {
  @override
  void initState() {
    context.read<GreetingBloc>().add(StartDelayNavigationEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      widget: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
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

abstract class GreetingProtocol {}
