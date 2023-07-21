import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StartFocus(),
    );
  }
}

class StartFocus extends StatefulWidget {
  const StartFocus({super.key});

  @override
  State<StartFocus> createState() => _StartFocusState();
}

class _StartFocusState extends State<StartFocus> {
  final controller = CountDownController();
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Start focus',
            style: TextStyle(fontSize: 20),
          ),
          CircularCountDownTimer(
            duration: 1500,
            initialDuration: 0,
            controller: controller,
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 2.5,
            ringColor: Colors.white70,
            ringGradient: null,
            fillColor: Colors.redAccent,
            fillGradient: null,
            backgroundColor: Colors.transparent,
            backgroundGradient: null,
            strokeWidth: 20.0,
            strokeCap: StrokeCap.round,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textFormat: CountdownTextFormat.MM_SS,
            isReverse: true,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: false,
            onStart: () {
              isFocus = true;
              debugPrint('Countdown Started');
            },
            onComplete: () {
              isFocus = false;
              debugPrint('Countdown Ended');
            },
            onChange: (String timeStamp) {
              debugPrint('Countdown Changed $timeStamp');
            },
            timeFormatterFunction: (defaultFormatterFunction, duration) {
              if (duration.inSeconds == 0) {
                return '';
              } else {
                return Function.apply(defaultFormatterFunction, [duration]);
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.redAccent,
                onPressed: () {
                  isFocus ? controller.start() : controller.pause();
                },
                child: Text(
                  isFocus ? 'Stop' : 'Start',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 20),
              MaterialButton(
                color: Colors.redAccent,
                onPressed: () {},
                child: const Text(
                  'Restart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ShortBeak extends StatefulWidget {
  const ShortBeak({super.key});

  @override
  State<ShortBeak> createState() => _ShortBeakState();
}

class _ShortBeakState extends State<ShortBeak> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Take a short break',
          ),
          MaterialButton(
            color: Colors.redAccent,
            onPressed: () {},
            child: const Text(
              'Start Short Break',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
