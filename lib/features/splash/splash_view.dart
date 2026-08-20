import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({
    super.key,
    this.onFinished,
    this.holdDuration = const Duration(milliseconds: 2600),
  });

  final VoidCallback? onFinished;

  final Duration holdDuration;

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  // Entrance: scale + fade
  late final AnimationController _entranceController;
  late final Animation<double> _scaleAnim;
  late final Animation<double> _fadeAnim;

  // Looping shimmer sweep across the text
  late final AnimationController _shimmerController;

  // Looping soft glow pulse on the border
  late final AnimationController _glowController;
  late final Animation<double> _glowAnim;

  @override
  void initState() {
    super.initState();

    _entranceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _scaleAnim = CurvedAnimation(
      parent: _entranceController,
      curve: Curves.elasticOut,
    );
    _fadeAnim = CurvedAnimation(
      parent: _entranceController,
      curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
    );

    _shimmerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat();

    _glowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    )..repeat(reverse: true);
    _glowAnim = CurvedAnimation(
      parent: _glowController,
      curve: Curves.easeInOut,
    );

    _entranceController.forward();

    Future.delayed(widget.holdDuration, () {
      if (mounted) widget.onFinished?.call();
    });
  }

  @override
  void dispose() {
    _entranceController.dispose();
    _shimmerController.dispose();
    _glowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFF1A1A1D);
    const borderColor = Color(0xFF3FA9F5);

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: AnimatedBuilder(
          animation: Listenable.merge([
            _entranceController,
            _shimmerController,
            _glowController,
          ]),
          builder: (context, child) {
            final glow = 6 + (_glowAnim.value * 10); // 6..16 px blur
            final glowOpacity = 0.35 + (_glowAnim.value * 0.35); // 0.35..0.7

            return Container(
              width: 340,
              height: 640,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: borderColor, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: borderColor.withValues(alpha: glowOpacity),
                    blurRadius: glow,
                    spreadRadius: 1,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Opacity(
                opacity: _fadeAnim.value,
                child: Transform.scale(
                  scale: _scaleAnim.value,
                  child: _ShimmeringLogo(
                    shimmerValue: _shimmerController.value,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// The "Verve" wordmark with a moving metallic/chrome shimmer.
class _ShimmeringLogo extends StatelessWidget {
  const _ShimmeringLogo({required this.shimmerValue});

  /// 0.0 -> 1.0, looping. Drives the position of the light sweep.
  final double shimmerValue;

  @override
  Widget build(BuildContext context) {
    // Sweep moves from -1.5 to 1.5 across the text so the highlight
    // enters and exits smoothly on each loop.
    final sweep = (shimmerValue * 3) - 1.5;

    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment(-1.0 + sweep, -0.3),
          end: Alignment(1.0 + sweep, 0.3),
          colors: const [
            Color(0xFF9A9A9A),
            Color(0xFFE8E8E8),
            Color(0xFFFFFFFF),
            Color(0xFFE8E8E8),
            Color(0xFF9A9A9A),
          ],
          stops: const [0.0, 0.35, 0.5, 0.65, 1.0],
        ).createShader(bounds);
      },
      child: const Text(
        'Verve',
        style: TextStyle(
          fontSize: 56,
          fontWeight: FontWeight.w900,
          letterSpacing: 1,
          color: Colors.white, // base color the shader tints
          shadows: [
            Shadow(color: Colors.black54, offset: Offset(0, 3), blurRadius: 4),
          ],
        ),
      ),
    );
  }
}
