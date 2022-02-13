import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key, required this.pageRoute, required this.child})
      : super(key: key);
  final String pageRoute;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: SizedBox(
        //color: Theme.of(context).backgroundColor,
        width: info.size.width,
        height: info.size.height,
        child: Scrollbar(
          thickness: 6,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const FlutterLogo(
                size: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Çay Platform',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: info.size.width,
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
        ),
      ),
    );
  }
}
