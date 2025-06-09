import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:our_market_app/core/widgets/custom_circular_indicator.dart';

class CustomCacheImage extends StatelessWidget {
  const CustomCacheImage({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => CustomCircularProIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
