import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- 西田さん、やひろさん、金城さんから対戦を申し込んでもらった
''';

class HobbyRunningSlide extends FlutterDeckSlideWidget {
  const HobbyRunningSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/hobby-running',
          speakerNotes: _speakerNotes,
          title: '趣味？ - ランニング',
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
                '趣味？ - ランニング',
                style: FlutterDeckTheme.of(
                  context,
                ).textTheme.title.copyWith(color: colorScheme.onPrimary),
              ),
            ),
          ),
        );
      },
      contentBuilder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 80,
          children: [
            Image.asset('assets/images/strava.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/hukidasi.png'),
                Image.asset('assets/images/boxer.png'),
              ],
            ),
          ],
        );
      },
    );
  }
}
