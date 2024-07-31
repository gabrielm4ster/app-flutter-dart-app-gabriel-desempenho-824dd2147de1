// ignore_for_file: use_key_in_widget_constructors

import 'package:desempenho_esportivo/_comum/minhas_cores.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class CountUpTimerWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CountUpTimerWidgetState createState() => _CountUpTimerWidgetState();
}

class _CountUpTimerWidgetState extends State<CountUpTimerWidget> {
  final _isHours = true;

  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
    // ignore: avoid_print
    onChange: (value) => print('onChange $value'),
  );

  @override
  void initState() {
    super.initState();
    _stopWatchTimer.rawTime.listen((value) =>
        // ignore: avoid_print
        print('rawTime $value ${StopWatchTimer.getDisplayTime(value)}'));
  }

  @override
  void dispose() async {
    super.dispose();
    await _stopWatchTimer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        /// Display stop watch time
        StreamBuilder<int>(
          stream: _stopWatchTimer.rawTime,
          initialData: _stopWatchTimer.rawTime.value,
          builder: (context, snap) {
            final value = snap.data!;
            final displayTime =
                StopWatchTimer.getDisplayTime(value, hours: _isHours);
            return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    displayTime,
                    style: const TextStyle(
                        fontSize: 40,
                        fontFamily: 'outfit',
                        color: MinhasCores.branco),
                  ),
                ),
              ],
            );
          },
        ),

        /// Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: MinhasCores.rosa_escuro2,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: _stopWatchTimer.onResetTimer,
                  child: const Text('Volta'),
                ),
                const Text(
                  'Primeira volta',
                  style: TextStyle(color: MinhasCores.branco),
                )
              ],
            ),
            Column(
              children: [
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: MinhasCores.azul,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  onPressed: _stopWatchTimer.onStartTimer,
                  child: const Text('Iniciar'),
                ),
                const Text(
                  'timer',
                  style: TextStyle(color: MinhasCores.branco),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
