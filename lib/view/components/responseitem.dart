
import 'package:flutter/material.dart';

class ResponseItem extends StatelessWidget {
  final String suggestion;

  const ResponseItem({
    super.key,
    required this.suggestion
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey[400]?.withOpacity(0.1),
          border: Border.all(
            color: Colors.grey[800]!.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        suggestion,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
