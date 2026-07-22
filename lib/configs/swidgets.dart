import 'package:flutter/material.dart';
import 'package:new_acs314b/configs/colors.dart';

class ObjectW extends StatefulWidget {
  final String? imagePath;
  final IconData? icon;
  final String title;
  final String? subtitle;
  final String? price;
  final String? location;
  final double? height;
  final double? width;

  const ObjectW({
    super.key,
    this.imagePath,
    this.icon,
    required this.title,
    this.subtitle,
    this.price,
    this.location,
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
          decoration: BoxDecoration(
            color: sixthColor,
            image: widget.imagePath != null
                ? DecorationImage(
                    image: AssetImage(widget.imagePath!),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          child: widget.imagePath != null
              ? Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: double.infinity,
                    color: Colors.black54,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(
                            color: thirdColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (widget.subtitle != null)
                          Text(
                            "Mileage: ${widget.subtitle!}",
                            style: const TextStyle(
                              color: thirdColor,
                              fontSize: 12,
                            ),
                          ),
                        if (widget.location != null)
                          Text(
                            "Location: ${widget.location!}",
                            style: const TextStyle(
                              color: thirdColor,
                              fontSize: 12,
                            ),
                          ),
                        if (widget.price != null)
                          Text(
                            "Price: ${widget.price!}",
                            style: const TextStyle(
                              color: sixthColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.icon != null)
                        Icon(widget.icon, size: 20, color: thirdColor),
                      if (widget.icon != null) const SizedBox(height: 8),
                      Text(
                        widget.title,
                        style: const TextStyle(
                          color: thirdColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (widget.subtitle != null)
                        Text(
                          widget.subtitle!,
                          style: const TextStyle(
                            color: thirdColor,
                            fontSize: 12,
                          ),
                        ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
