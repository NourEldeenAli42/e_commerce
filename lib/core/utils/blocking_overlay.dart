import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BlockingOverlay {
  static OverlayEntry? _entry;

  static void show(BuildContext context, {required String lottieAsset}) {
    if (_entry != null) return; // already showing, avoid duplicates

    _entry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          const ModalBarrier(dismissible: false, color: Colors.black54),
          Positioned.fill(
            child: Center(
              child: Lottie.asset(
                lottieAsset,
                width: 220,
                height: 220,
                repeat: false,
                onLoaded: (composition) {
                  // Remove the overlay right when the animation finishes
                  Future.delayed(composition.duration, hide);
                },
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context, rootOverlay: true).insert(_entry!);
  }

  static void hide() {
    _entry?.remove();
    _entry = null;
  }
}