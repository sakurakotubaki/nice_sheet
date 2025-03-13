import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NiceSheet {
  final String editTitle;
  final String deleteTitle;
  final String emojiTitle;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onTapEdit;
  final void Function()? onTapDelete;

  NiceSheet({
    this.editTitle = 'Edit',
    this.deleteTitle = 'Delete',
    this.emojiTitle = 'Emoji',
    this.backgroundColor,
    this.textColor,
    this.onTapEdit,
    this.onTapDelete,
  });

  static void showBottomSheet(
    BuildContext context,
    String text, {
    Color? backgroundColor,
    Color? textColor,
    String editTitle = 'Edit',
    String deleteTitle = 'Delete',
    Function()? onTapEdit,
    Function()? onTapDelete,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: backgroundColor ?? Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(
                  text,
                  style: TextStyle(color: textColor ?? Colors.black),
                ),
                onTap: () {
                  Clipboard.setData(ClipboardData(text: text));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.copy),
                title: Text('Copy'),
                onTap: () {
                  Clipboard.setData(ClipboardData(text: text));
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text(editTitle),
                onTap: onTapEdit,
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text(deleteTitle),
                onTap: onTapDelete,
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
