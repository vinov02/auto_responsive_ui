import 'package:auto_responsive_ui/src/core/responsive_config.dart';
import 'package:auto_responsive_ui/src/core/responsive_engine.dart';
import 'package:flutter/widgets.dart';

class ResponsiveBuilder extends StatelessWidget {
  final ResponsiveConfig config;
  final Widget child;

  const ResponsiveBuilder({
    super.key,
    required this.config,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    ResponsiveEngine.init(context, config);
    return child;
  }
}
