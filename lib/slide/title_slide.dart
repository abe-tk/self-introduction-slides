import 'package:flutter/widgets.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- Welcome to flutter_deck example! 🚀
- Use slide deck controls to navigate.
''';

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/intro',
          title: 'Introduction',
          speakerNotes: _speakerNotes,
          footer: FlutterDeckFooterConfiguration(showFooter: false),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Nice to meet you! 🚀',
      subtitle: 'Let me introduce myself.',
    );
  }
}
