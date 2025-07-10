import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

const _speakerNotes = '''
- 営業会社 - 台風並みの暴風雨の中、同情(され)営業をしたエピソード
''';

class _CareerEntry {
  final String year;
  final String description;

  const _CareerEntry({
    required this.year,
    required this.description,
  });
}

class SelfIntroductionSlide extends FlutterDeckSlideWidget {
  const SelfIntroductionSlide({super.key})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/self_introduction',
            speakerNotes: _speakerNotes,
            title: '自己紹介',
          ),
        );

  static const List<_CareerEntry> _careerEntries = [
    _CareerEntry(year: '1999年', description: '兵庫県尼崎市に生まれる'),
    _CareerEntry(year: '2017年', description: '東京〇〇大学へ進学し上京'),
    _CareerEntry(year: '2019年', description: '中退し営業会社へ'),
    _CareerEntry(year: '2020年', description: 'SES企業へ転職し\nエンジニアとしてスタート'),
    _CareerEntry(year: '2023年', description: 'Flutterによる\nスマホアプリ受託開発会社へ転職'),
    _CareerEntry(year: '2025年', description: '現在に至る'),
  ];

  @override
  Widget build(BuildContext context) {
    return FlutterDeckSlide.template(
      backgroundBuilder: (context) =>
          FlutterDeckBackground.solid(Theme.of(context).colorScheme.surface),
      headerBuilder: (context) => _buildHeader(context),
      contentBuilder: (context) => _buildContent(context),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      color: colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          '自己紹介',
          style: FlutterDeckTheme.of(context)
              .textTheme
              .title
              .copyWith(color: colorScheme.onPrimary),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 120,
        children: [
          Image.asset('assets/images/tozan.png'),
          Expanded(child: _buildCareerTable(context)),
        ],
      ),
    );
  }

  Widget _buildCareerTable(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(4),
      },
      children: [
        _buildSpacerRow(36),
        _buildTitleRow(context),
        _buildSpacerRow(48),
        ..._careerEntries.expand((entry) => [
          _buildCareerRow(context, entry),
          _buildSpacerRow(36),
        ]),
      ],
    );
  }

  TableRow _buildSpacerRow(double height) {
    return TableRow(
      children: [
        SizedBox(height: height),
        const SizedBox.shrink(),
        const SizedBox.shrink(),
      ],
    );
  }

  TableRow _buildTitleRow(BuildContext context) {
    return TableRow(
      children: [
        Text(
          '【略歴】',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox.shrink(),
        const SizedBox.shrink(),
      ],
    );
  }

  TableRow _buildCareerRow(BuildContext context, _CareerEntry entry) {
    final theme = Theme.of(context);
    return TableRow(
      children: [
        Text(
          entry.year,
          style: theme.textTheme.displayLarge,
        ),
        Text(
          '...',
          style: theme.textTheme.displayLarge,
        ),
        Text(
          entry.description,
          style: theme.textTheme.displaySmall,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
