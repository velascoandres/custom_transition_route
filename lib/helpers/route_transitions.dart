import 'package:flutter/material.dart';


const DEFAULT_DURATION = Duration(milliseconds: 200);

enum AnimationType {
  normal,
  fadeIn,
}

class RouteTransitions {
  final BuildContext context;
  final Widget child;
  final AnimationType animation;
  final Duration duration;
  RouteTransitions({
    @required this.context,
    @required this.child,
    this.animation = AnimationType.normal,
    this.duration = DEFAULT_DURATION,
  }) {
    switch (this.animation) {
      case AnimationType.fadeIn:
        this._fadeInTransition(
          duration: this.duration,
        );
        break;

      case AnimationType.normal:
        this._normalTransition();
        break;
      default:
    }
  }

  void _normalTransition() =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => this.child));

  void _fadeInTransition({Duration duration = DEFAULT_DURATION,}){

      final route = PageRouteBuilder(
        pageBuilder: (_, __, ___) => this.child,
        transitionDuration: duration,
        transitionsBuilder: (_ ,animation, __, child){
            return FadeTransition(
              child: child,
              opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                  curve: Curves.easeOut,
                  parent: animation
                )
              ),
            );
        }
      );

      Navigator.push(context, route);
  }
      
}
