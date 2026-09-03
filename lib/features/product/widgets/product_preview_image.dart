import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductPreviewImage extends StatefulWidget {
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback? onFavoriteToggle;
  const ProductPreviewImage({
    super.key,
    required this.imageUrl,
    required this.isFavorite,
    this.onFavoriteToggle,
  });

  @override
  State<ProductPreviewImage> createState() => _ProductPreviewImageState();
}

class _ProductPreviewImageState extends State<ProductPreviewImage> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  @override
  void didUpdateWidget(covariant ProductPreviewImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isFavorite != widget.isFavorite) {
      _isFavorite = widget.isFavorite;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          widget.imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 16,
          right: 16,
          child: SvgPicture.asset(
            'assets/icons/share.svg',
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
              BlendMode.srcIn,
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          right: 16,
          child: IconButton(
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
              widget.onFavoriteToggle?.call();
            },
            icon: _isFavorite
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}
