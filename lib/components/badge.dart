import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomBadge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;

  const CustomBadge({
    super.key,
    required this.child,
    required this.value,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(2),
            constraints: const BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color ?? Theme.of(context).colorScheme.secondary,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
