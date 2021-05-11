import 'package:flutter/material.dart';
import 'package:reaction_test/generated/l10n.dart';
import 'package:reaction_test/main.dart';
import 'package:reaction_test/widgets/approval_inscription.dart';

class Result extends StatelessWidget {
  final Function onClearState;
  final List<int> results;
  final int bestResult;

  Result(
      {@required this.onClearState,
      @required this.results,
      @required this.bestResult});

  int _getAverageResult(List<int> results) {
    int sum = results.reduce((value, element) => (value + element));
    int average = (sum ~/ results.length);
    if (average <= (bestResult ?? average)) {
      prefs.setInt('best_result', average);
    }
    return average;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              blurRadius: 3,
              spreadRadius: 0,
              offset: Offset(2, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 3,
              ),
              ApprovalInscription(
                score: _getAverageResult(results),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                S.of(context).result_title,
                style: Theme.of(context).textTheme.headline1,
              ),
              ...results
                  .map((result) => Text(
                        ('— $result ' + S.of(context).ms),
                        style: Theme.of(context).textTheme.bodyText1,
                      ))
                  .toList(),
              Text(
                S.of(context).average_result,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                ('— ${_getAverageResult(results)} ' + S.of(context).ms),
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextButton(
                child: Text(
                  S.of(context).go_again,
                ),
                onPressed: () => onClearState(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
