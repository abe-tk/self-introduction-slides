import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- 西田さん、やひろさん、金城さんから対戦を申し込んでもらった
''';

class BeforeNowAndFromNowSlide extends FlutterDeckSlideWidget {
  const BeforeNowAndFromNowSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/before-now-and-from-now',
          speakerNotes: _speakerNotes,
          title: 'これまで これから',
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
                'これまで と これから',
                style: FlutterDeckTheme.of(
                  context,
                ).textTheme.title.copyWith(color: colorScheme.onPrimary),
              ),
            ),
          ),
        );
      },
      contentBuilder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 20,
            children: [
              Image.asset('assets/images/system.png'),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Text(
                  'Icons by Icons8',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
