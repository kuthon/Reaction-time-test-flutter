import 'dart:async';
import 'dart:math';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reaction_test/generated/l10n.dart';
import 'package:reaction_test/main.dart';
import 'package:reaction_test/widgets/progress_bar.dart';
import 'package:reaction_test/widgets/result.dart';
import 'package:reaction_test/widgets/touch_field.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backGroundButtonColor = Colors.grey;
  Timer? t;
  DateTime? _timeStart;
  DateTime? _timeEnd;
  int? _timeDiff;
  int _attemptCounter = 0;
  static int _amountAttempts = 3;
  List<int> _results = [];
  List<bool> _isPressed = List<bool>.filled(_amountAttempts, false);
  int? _bestResult = prefs.getInt('best_result');
  bool _isActive = false;

  void _onTapDown() {
    if (_isActive == false) {
      setState(() {
        _isActive = true;
        int delay = Random().nextInt(3000) + 1500;
        _backGroundButtonColor = Theme
            .of(context)
            .focusColor;
        t = Timer(Duration(milliseconds: delay), () {
          setState(() {
            _backGroundButtonColor = Theme
                .of(context)
                .canvasColor;
          });
        });
        _timeStart = DateTime.now().add(Duration(milliseconds: delay));
      });
    }
  }

  void _onTapUp() {
    setState(() {
      _isActive = false;
      _timeEnd = new DateTime.now();
      _timeDiff = _timeEnd!.difference(_timeStart!).inMilliseconds;

      if (_timeDiff! > 0) {
        _isPressed[_attemptCounter] = true;
        _backGroundButtonColor = Colors.grey;
        _results.add(_timeDiff!);
        _attemptCounter++;
      } else {
        t!.cancel();
        _showWarningMessage();
        _clearState();
      }
    });
  }

  void _clearState() {
    setState(() {
      for (int i = 0; i < _isPressed.length; i++) _isPressed[i] = false;
      _backGroundButtonColor = Theme.of(context).disabledColor;
      _attemptCounter = 0;
      _results = [];
      _bestResult = prefs.getInt('best_result');
      _isActive = false;
    });
  }

  Future<void> _changeTheme() async {
    var theme = await AdaptiveTheme.getThemeMode();
    if (theme == AdaptiveThemeMode.dark) {
      AdaptiveTheme.of(context).setLight();
    } else {
      AdaptiveTheme.of(context).setDark();
    }
  }

  Future<void> _showWarningMessage() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(S.of(context).warning,
              style: Theme.of(context).textTheme.headline1),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  S.of(context).ahead_of_time,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text(S.of(context).results_reset,
                    style: Theme.of(context).textTheme.bodyText2),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(S.of(context).got_it),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Text(
                '${S.of(context).best_result}: ${_bestResult ?? '?'} ${S.of(context).ms}',
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                S.of(context).hold_finger,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            _attemptCounter < _amountAttempts
                ? TouchField(
                    backGroundButtonColor: _backGroundButtonColor,
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                  )
                : Result(
                    onClearState: _clearState,
                    results: _results,
                    bestResult: _bestResult,
                  ),
            ProgressBar(
              isPressed: _isPressed,
            ),

            TextButton(
              child: Text(S.of(context).change_theme),
              onPressed: () => _changeTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
