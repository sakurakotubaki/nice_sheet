import 'package:flutter/material.dart';

class CheckboxSheet {
  static void showCheckboxSheet(
    BuildContext context,
    List<String> items,
    Function(List<bool>) onChanged,
  ) {
    List<bool> checked = List<bool>.filled(items.length, false);

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  ...items.asMap().entries.map((entry) {
                    int index = entry.key;
                    String item = entry.value;
                    return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(item),
                                value: checked[index],
                                onChanged: (bool? value) {
                                  setState(() {
                                    checked[index] = value ?? false;
                                  });
                                  onChanged(checked);
                                },
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                checkColor: Colors.white,
                                activeColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  items.removeAt(index);
                                  checked.removeAt(index);
                                });
                                onChanged(checked);
                              },
                            ),
                          ],
                        ),
                        if (index < items.length - 1) Divider(),
                      ],
                    );
                  }),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
