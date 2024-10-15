import 'package:flutter/material.dart';

class ConfirmationCodeBox extends StatelessWidget {
  const ConfirmationCodeBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 45,
      child: TextFormField(
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onEditingComplete: () {
          // move focus to next field when editing is complete
          FocusScope.of(context).nextFocus();
        },
      ),
    );
  }
}
