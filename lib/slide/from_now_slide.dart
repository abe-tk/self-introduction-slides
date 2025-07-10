import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- 西田さん、やひろさん、金城さんから対戦を申し込んでもらった
''';

class FromNowSlide extends FlutterDeckSlideWidget {
  const FromNowSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/from-now',
          speakerNotes: _speakerNotes,
          title: 'これから',
          transition: FlutterDeckTransition.rotation(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.template(
      backgroundBuilder: (context) =>
          FlutterDeckBackground.solid(Theme.of(context).colorScheme.surface),
      headerBuilder: (context) {
        final colorScheme = Theme.of(context).colorScheme;
        return Container(
          width: double.infinity,
          color: colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              child: Text(
                'これから',
                style: FlutterDeckTheme.of(
                  context,
                ).textTheme.title.copyWith(color: colorScheme.onPrimary),
              ),
            ),
          ),
        );
      },
      contentBuilder: (context) {
        return Center();
      },
    );
  }
}
