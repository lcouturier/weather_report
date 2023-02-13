import 'package:flutter/material.dart';

class SingleChildScrollViewWithFixedBottom extends StatelessWidget {
  final Widget top;
  final Widget bottom;
  final ScrollController? controller;
  const SingleChildScrollViewWithFixedBottom({Key? key, required this.top, required this.bottom, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          controller: controller,
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraints.maxWidth, minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[top, const Spacer(), bottom],
              ),
            ),
          ),
        );
      },
    );
  }
}
