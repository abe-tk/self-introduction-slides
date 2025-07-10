import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- 営業会社 - 台風並みの暴風雨の中、同情(され)営業をしたエピソード
''';

class HobbyCoffeeSlide extends FlutterDeckSlideWidget {
  const HobbyCoffeeSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/hobby-coffee',
          speakerNotes: _speakerNotes,
          title: '趣味 - コーヒー',
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
                '趣味 - コーヒー',
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
          child: Image.asset('assets/images/coffee.png', scale: 0.8),
        );
      },
    );
  }
}
