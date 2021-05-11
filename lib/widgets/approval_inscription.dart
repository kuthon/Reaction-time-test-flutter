import 'package:flutter/material.dart';
import 'package:reaction_test/generated/l10n.dart';

// ignore: must_be_immutable
class ApprovalInscription extends StatelessWidget {
  final int score;
  String _inscription;
  ApprovalInscription({this.score});

  @override
  Widget build(BuildContext context) {

    if (score < 170) {
      _inscription = S.of(context).unbelievable;
    } else if (score < 210) {
      _inscription = S.of(context).delightfully;
    } else if (score < 250) {
      _inscription = S.of(context).wonderful;
    } else if (score < 290) {
      _inscription = S.of(context).beautiful;
    } else if (score < 350) {
      _inscription = S.of(context).excellent;
    } else if (score < 450) {
      _inscription = S.of(context).good;
    } else if (score < 600) {
      _inscription = S.of(context).middling;
    } else {
      _inscription = S.of(context).bad;
    }

    return Text(
      _inscription,
      style: Theme.of(context).textTheme.headline2
    );
  }
}
