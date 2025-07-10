import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- 営業会社 - 台風並みの暴風雨の中、同情(され)営業をしたエピソード
''';

class SelfIntroductionSlide extends FlutterDeckSlideWidget {
  const SelfIntroductionSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/self_introduction',
          speakerNotes: _speakerNotes,
          title: '自己紹介',
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
                '自己紹介',
                style: FlutterDeckTheme.of(
                  context,
                ).textTheme.title.copyWith(color: colorScheme.onPrimary),
              ),
            ),
          ),
        );
      },
      contentBuilder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 120,
            children: [
              Image.asset('assets/images/tozan.png'),
              Expanded(
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                  columnWidths: <int, TableColumnWidth>{
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(4),
                  },
                  children: [
                    TableRow(
                      children: [
                        SizedBox(height: 36),
                        SizedBox.shrink(),
                        SizedBox.shrink(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '【略歴】',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        SizedBox.shrink(),
                        SizedBox.shrink(),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(height: 48),
                        SizedBox.shrink(),
                        SizedBox.shrink(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '1999年',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '...',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '兵庫県尼崎市に生まれる',
                          style: Theme.of(context).textTheme.displaySmall,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(height: 36),
                        SizedBox.shrink(),
                        SizedBox.shrink(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '2017年',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '...',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '東京〇〇大学へ進学し上京',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(height: 36),
                        SizedBox.shrink(),
                        SizedBox.shrink(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '2019年',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '...',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '中退し営業会社へ',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(height: 36),
                        SizedBox.shrink(),
                        SizedBox.shrink(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '2020年',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '...',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          'SES企業へ転職し\nエンジニアとしてスタート',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(height: 36),
                        SizedBox.shrink(),
                        SizedBox.shrink(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '2023年',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '...',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          'Flutterによる\nスマホアプリ受託開発会社へ転職',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        SizedBox(height: 36),
                        SizedBox.shrink(),
                        SizedBox.shrink(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '2025年',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '...',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          '現在に至る',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
