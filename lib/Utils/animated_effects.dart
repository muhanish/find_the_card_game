import 'package:flutter/animation.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationEffects {
  static final transitionIn = <Effect>[
    SlideEffect(duration: 500.ms, begin: const Offset(0, 0.4), end: const Offset(0, 0), curve: Curves.easeIn),
    FadeEffect(duration: 500.ms, curve: Curves.easeIn, begin: 0, end: 1),
  ];
}
