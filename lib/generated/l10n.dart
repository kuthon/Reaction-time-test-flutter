// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Reaction test`
  String get main_title {
    return Intl.message(
      'Reaction test',
      name: 'main_title',
      desc: '',
      args: [],
    );
  }

  /// `Pass the test `
  String get home_page_title {
    return Intl.message(
      'Pass the test ',
      name: 'home_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Your results:`
  String get result_title {
    return Intl.message(
      'Your results:',
      name: 'result_title',
      desc: '',
      args: [],
    );
  }

  /// `ms`
  String get ms {
    return Intl.message(
      'ms',
      name: 'ms',
      desc: '',
      args: [],
    );
  }

  /// `Go again`
  String get go_again {
    return Intl.message(
      'Go again',
      name: 'go_again',
      desc: '',
      args: [],
    );
  }

  /// `Average result:`
  String get average_result {
    return Intl.message(
      'Average result:',
      name: 'average_result',
      desc: '',
      args: [],
    );
  }

  /// `Warning!`
  String get warning {
    return Intl.message(
      'Warning!',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `You release your finger ahead of time.`
  String get ahead_of_time {
    return Intl.message(
      'You release your finger ahead of time.',
      name: 'ahead_of_time',
      desc: '',
      args: [],
    );
  }

  /// `Results reset.`
  String get results_reset {
    return Intl.message(
      'Results reset.',
      name: 'results_reset',
      desc: '',
      args: [],
    );
  }

  /// `Got it`
  String get got_it {
    return Intl.message(
      'Got it',
      name: 'got_it',
      desc: '',
      args: [],
    );
  }

  /// `Hold your finger on the screen until the red light turns on.`
  String get hold_finger {
    return Intl.message(
      'Hold your finger on the screen until the red light turns on.',
      name: 'hold_finger',
      desc: '',
      args: [],
    );
  }

  /// `Change Theme`
  String get change_theme {
    return Intl.message(
      'Change Theme',
      name: 'change_theme',
      desc: '',
      args: [],
    );
  }

  /// `Best result`
  String get best_result {
    return Intl.message(
      'Best result',
      name: 'best_result',
      desc: '',
      args: [],
    );
  }

  /// `Good!`
  String get good {
    return Intl.message(
      'Good!',
      name: 'good',
      desc: '',
      args: [],
    );
  }

  /// `Excellent!`
  String get excellent {
    return Intl.message(
      'Excellent!',
      name: 'excellent',
      desc: '',
      args: [],
    );
  }

  /// `Beautiful!`
  String get beautiful {
    return Intl.message(
      'Beautiful!',
      name: 'beautiful',
      desc: '',
      args: [],
    );
  }

  /// `Wonderful!`
  String get wonderful {
    return Intl.message(
      'Wonderful!',
      name: 'wonderful',
      desc: '',
      args: [],
    );
  }

  /// `Middling`
  String get middling {
    return Intl.message(
      'Middling',
      name: 'middling',
      desc: '',
      args: [],
    );
  }

  /// `Bad`
  String get bad {
    return Intl.message(
      'Bad',
      name: 'bad',
      desc: '',
      args: [],
    );
  }

  /// `Delightfully!`
  String get delightfully {
    return Intl.message(
      'Delightfully!',
      name: 'delightfully',
      desc: '',
      args: [],
    );
  }

  /// `Unbelievable!`
  String get unbelievable {
    return Intl.message(
      'Unbelievable!',
      name: 'unbelievable',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
