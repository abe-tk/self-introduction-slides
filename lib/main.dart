import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_deck_web_client/flutter_deck_web_client.dart';
import 'package:self_introduction_slides/slide/before_now_and_from_now_slide.dart';
import 'package:self_introduction_slides/slide/hobby_coffee_slide.dart';
import 'package:self_introduction_slides/slide/hobby_running_slide.dart';
import 'package:self_introduction_slides/slide/la_france_marathon_slide.dart';
import 'package:self_introduction_slides/slide/self_introduction_slide.dart';
import 'package:self_introduction_slides/slide/title_slide.dart';

void main() {
  runApp(const SelfIntroductionApp());
}

class SelfIntroductionApp extends StatelessWidget {
  const SelfIntroductionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckApp(
      // プレゼンタービューと同期を取るためにflutter_deck_web_clientを使用
      // ただし同期が取れるのはwebのみ
      client: FlutterDeckWebClient(),

      //
      configuration: FlutterDeckConfiguration(
        background: const FlutterDeckBackgroundConfiguration(
          light: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFDEE9), Color(0xFFB5FFFC)],
            ),
          ),
          dark: FlutterDeckBackground.gradient(
            LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF16222A), Color(0xFF3A6073)],
            ),
          ),
        ),
        footer: const FlutterDeckFooterConfiguration(
          showSlideNumbers: true,
          showSocialHandle: true,
        ),
        header: const FlutterDeckHeaderConfiguration(showHeader: false),
        marker: const FlutterDeckMarkerConfiguration(
          color: Colors.cyan,
          strokeWidth: 8,
        ),
        progressIndicator: const FlutterDeckProgressIndicator.gradient(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.purple],
          ),
          backgroundColor: Colors.black,
        ),
        slideSize: FlutterDeckSlideSize.fromAspectRatio(
          aspectRatio: const FlutterDeckAspectRatio.ratio16x9(),
          resolution: const FlutterDeckResolution.fhd(),
        ),
        transition: const FlutterDeckTransition.fade(),
        controls: const FlutterDeckControlsConfiguration(
          presenterToolbarVisible: true,
          gestures: FlutterDeckGesturesConfiguration.mobileOnly(),
          shortcuts: FlutterDeckShortcutsConfiguration(
            enabled: true,
            nextSlide: SingleActivator(LogicalKeyboardKey.arrowRight),
            previousSlide: SingleActivator(LogicalKeyboardKey.arrowLeft),
            toggleMarker: SingleActivator(
              LogicalKeyboardKey.keyM,
              control: true,
              meta: true,
            ),
            toggleNavigationDrawer: SingleActivator(
              LogicalKeyboardKey.period,
              control: true,
              meta: true,
            ),
          ),
        ),
      ),
      lightTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB5FFFC)),
          useMaterial3: true,
        ),
      ),
      darkTheme: FlutterDeckThemeData.fromTheme(
        ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF16222A),
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
      ),
      slides: [
        TitleSlide(),
        SelfIntroductionSlide(),
        HobbyCoffeeSlide(),
        HobbyRunningSlide(),
        LaFranceMarathonSlide(),
        BeforeNowAndFromNowSlide(),
        FlutterDeckSlide.title(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/end',
            title: 'Thank you!',
            speakerNotes: '- Use flutter_deck to create your own slides.',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
          title: 'Thank you! 👋',
        ),
      ],
      speakerInfo: const FlutterDeckSpeakerInfo(
        name: 'takuro abe',
        description: 'Flutter Engineer',
        socialHandle: '＠abe-tk',
        imagePath: 'assets/images/profile512.png',
      ),
    );
  }
}
