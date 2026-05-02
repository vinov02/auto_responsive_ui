class ResponsiveConfig {
  final double designWidth;
  final double designHeight;
  final double minScale;
  final double maxScale;

  const ResponsiveConfig({
    required this.designWidth,
    required this.designHeight,
    this.minScale = 0.85,
    this.maxScale = 1.25,
  });
}