import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key, required this.pageRoute, required this.child})
      : super(key: key);
  final String pageRoute;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);
    return SizedBox(
      //color: Theme.of(context).backgroundColor,
      width: info.size.width,
      height: info.size.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            // alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 1,
                ),
                const FlutterLogo(
                  size: 150,
                ),
                Text(
                  'Çay Platform',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: info.size.width,
              height: info.size.height * 0.56,
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
