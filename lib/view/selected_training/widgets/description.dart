import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xFFEDF7F8);

    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
      child: Center(
        child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300.withOpacity(0.3),
                    offset: const Offset(0, 3),
                    blurRadius: 3,
                    spreadRadius: 3),
              ],
            ),
            width: MediaQuery.of(context).size.width / 1.4,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Description",  
                  style: TextStyle(fontSize: 20),
                ),
                SingleChildScrollView(
                  child: Text(
                    "Curabitur ultricies mauris eu diam cursus, a dignissim lorem semper. Etiam ut facilisis nunc. Ut et vestibulum lacus, vel commodo lorem. Maecenas ac nulla congue, vulputate ante vel, semper sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Vestibulum ultrices elit quis turpis feugiat ornare. Vivamus eleifend feugiat pharetra. Morbi quis odio a nulla ultricies mollis. Cras sed purus euismod, porttitor massa ac, feugiat odio.",
                    style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
