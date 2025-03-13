# Nice Sheet

Nice Sheet is a Flutter package that provides a customizable bottom sheet with checkboxes. It allows users to select multiple items from a list and includes features such as a close button and item deletion.

## Features

- Customizable checkboxes with circular shape and green color when checked
- Divider between each checkbox item
- Close button at the top right of the bottom sheet
- Delete button for each item

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  nice_sheet:
    git:
      url: https://github.com/sakurakotubaki/nice_sheet
```

Then, run `flutter pub get` to install the package.

## Usage

Import the package in your Dart file:

```dart
import 'package:nice_sheet/checkbox_sheet.dart';
```

To show the checkbox sheet, use the `showCheckboxSheet` method:

```dart
ElevatedButton(
                onPressed: () {
                  List<String> items = [
                    'Item 1',
                    'Item 2',
                    'Item 3',
                    'Item 4',
                    'Item 5',
                    'Item 6',
                    'Item 7',
                    'Item 8',
                    'Item 9',
                    'Item 10',
                    'Item 11',
                    'Item 12',
                    'Item 13',
                    'Item 14',
                  ];

                  CheckboxSheet.showCheckboxSheet(context, items, (
                    List<bool> checked,
                  ) {
                    debugPrint('Checked: $checked');
                  });
                },
                child: Text('Show Checkbox Sheet'),
              ),
```

## License

This project is licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) file for details.

