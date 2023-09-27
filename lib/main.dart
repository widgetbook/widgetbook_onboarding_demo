import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_onboarding_demo/simple_button.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        AlignmentAddon(),
      ],
      directories: [
        WidgetbookComponent(
          name: '$SimpleButton',
          useCases: [
            WidgetbookUseCase(
              name: 'Default',
              builder: (context) {
                return SimpleButton(
                  text: context.knobs.string(
                    label: 'Text',
                    initialValue: 'Hello World!',
                  ),
                );
              },
            )
          ],
        )
      ],
    );
  }
}
