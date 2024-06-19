import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/resources/color_resource.dart';
import '../../../../core/resources/image_resource.dart';
import '../bloc/greeting_bloc.dart';

class GreetingView extends StatefulWidget {
  const GreetingView({super.key});

  @override
  State<GreetingView> createState() => _GreetingViewState();
}

class _GreetingViewState extends State<GreetingView>
    with TickerProviderStateMixin<GreetingView> {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    _animationController.addListener(() {
      if (_animationController.value > 1) {
        _animationController.value = 1;
      }
    });
    context.read<GreetingBloc>().add(StartDelayNavigationEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.black,
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Lottie.asset(
            ImageResource.animationWhale,
            height: 250.w,
            width: 250.w,
            fit: BoxFit.fill,
            controller: _animationController,
            onLoaded: (composition) {
              _animationController
                ..duration = composition.duration
                ..forward();
            },
          ),
        ),
      ),
    );
  }
}

abstract class GreetingProtocol {}
