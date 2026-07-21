import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/colors.dart';

class ObjectW extends StatefulWidget {
  final String? imagePath; // Optional
  final IconData? icon; // Optional
  final String title;
  final String? subtitle;
  final double? height;
  final double? width;

  const ObjectW({
    super.key,
    this.imagePath,
    this.icon,
    required this.title,
    this.subtitle,
    this.height,
    this.width,
  });

  @override
  State<ObjectW> createState() => _ObjectWState();
}

class _ObjectWState extends State<ObjectW> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: widget.height ?? 50,
          width: widget.width ?? 50,
          decoration: BoxDecoration(
            color: sixthColor,
            image: widget.imagePath != null
                ? DecorationImage(
                    image: AssetImage(widget.imagePath!),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.icon != null)
                  Icon(widget.icon, size: 20, color: Colors.white),
                if (widget.icon != null) const SizedBox(height: 8),
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (widget.subtitle != null)
                  Text(
                    widget.subtitle!,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
