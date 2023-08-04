library inactivity_screen_detector;

import 'package:flutter/material.dart';
import 'package:inactivity_screen_detector/provider/timer_service.dart';


class InactivityScreenDetector extends StatefulWidget {
  final Duration duration;

  final Function() onStopped;

  final Widget child;

  const InactivityScreenDetector({
    Key? key,
    required this.child,
    required this.duration,
    required this.onStopped,
  }) : super(key: key);

  @override
  State<InactivityScreenDetector> createState() =>
      _InactivityScreenDetectorState();
}

class _InactivityScreenDetectorState extends State<InactivityScreenDetector> {
  TimerService? _timerService;

  @override
  Widget build(BuildContext context) {
    onInit();
    return GestureDetector(
      onTap: _screenInteraction,
      onDoubleTap: _screenInteraction,
      onSecondaryLongPress: _screenInteraction,
      onScaleStart: _screenInteraction,
      onDoubleTapCancel: _screenInteraction,
      onLongPress: _screenInteraction,
      onTapDown: _screenInteraction,
      onLongPressDown: _screenInteraction,
      onLongPressStart: _screenInteraction,
      onLongPressEnd: _screenInteraction,
      onForcePressStart: _screenInteraction,
      onForcePressEnd: _screenInteraction,
      onForcePressPeak: _screenInteraction,
      onForcePressUpdate: _screenInteraction,
      onVerticalDragDown: _screenInteraction,
      onHorizontalDragCancel: _screenInteraction,
      onScaleUpdate: _screenInteraction,
      onSecondaryTap: _screenInteraction,
      onLongPressMoveUpdate: _screenInteraction,
      child: widget.child,
    );
  }

  void onInit() {
    if (_timerService == null) {
      _timerService = TimerService.of(context);
      _timerService!.setDuration(widget.duration);
      _timerService!.start();
      _timerService!.addListener(() => _onTimerComplete());
    }
  }

  void _screenInteraction([_]) => _timerService!.reset();

  void _onTimerComplete() => widget.onStopped();
}
