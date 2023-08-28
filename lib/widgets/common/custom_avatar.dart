import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget(
      {super.key,
      required this.imageUrl,
      this.avatarRadius = 25,
      this.avatarBorderRadius = 28,
      required this.avatarBackgroundColor});
  final String imageUrl;
  final double avatarRadius;
  final double avatarBorderRadius;
  final Color avatarBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: avatarBackgroundColor,
      radius: avatarBorderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => CircleAvatar(
          radius: avatarRadius,
          backgroundImage: imageProvider,
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: Colors.red,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
