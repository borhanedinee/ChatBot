import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  final String hitoryTypeIcon;

  final String historyText;
  
  final onPressed;

  const HistoryItem({
    super.key,
    required this.historyText,
    required this.hitoryTypeIcon,
    required this.onPressed,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      padding: const EdgeInsets.all(10),
      height: 70,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.grey[900], borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          Image.asset(
            hitoryTypeIcon,
            height: 40,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 240,
                  child: Text(
                    historyText,
                    style: TextStyle(color: Colors.grey[400], fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.highlight_remove_outlined,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
