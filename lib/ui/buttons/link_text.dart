import 'package:flutter/material.dart';

class LinkText extends StatefulWidget {
  final String text;
  final Function? onPressed;
  final Color? color;
  const LinkText(
      {super.key,
      required this.text,
      this.onPressed,
      this.color = const Color.fromARGB(255, 95, 95, 95)});

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onPressed != null) widget.onPressed!();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: ((event) => setState(() {
              isHover = true;
            })),
        onExit: ((event) => setState(() {
              isHover = false;
            })),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            this.widget.text,
            style: TextStyle(
                fontSize: 16,
                // color: Colors.grey[700],
                color: widget.color,
                decoration:
                    isHover ? TextDecoration.underline : TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
