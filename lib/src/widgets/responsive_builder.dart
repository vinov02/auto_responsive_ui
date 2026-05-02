import 'package:auto_responsive_ui/src/core/responsive_config.dart';
import 'package:auto_responsive_ui/src/core/responsive_engine.dart';
import 'package:flutter/widgets.dart';

/// A widget that initializes the responsive engine
/// and provides scaling configuration to the app.
///
/// Wrap your root widget with this to enable responsive scaling.
class ResponsiveBuilder extends StatelessWidget {

  /// Configuration used for responsive scaling.
  final ResponsiveConfig config;

  /// The child widget where responsive scaling will be applied.
  final Widget child;

  /// Creates a [ResponsiveBuilder] with the given configuration and child.
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
