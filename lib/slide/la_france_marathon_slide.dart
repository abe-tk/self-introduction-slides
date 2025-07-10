import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- クラスメソッドはまず申し込む文化だと聞いた。（AWS）
''';

class LaFranceMarathonSlide extends FlutterDeckSlideWidget {
  const LaFranceMarathonSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/la-france-marathon',
          speakerNotes: _speakerNotes,
          title: 'ラ・フランスマラソン',
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
                'ラ・フランスマラソン',
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
            spacing: 40,
            children: [
              Text(
                'ハーフ（21.0975km） 参加予定！！',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Image.asset('assets/images/marathon.png', scale: 0.6),
            ],
          ),
        );
      },
    );
  }
}
