import 'package:flutter/material.dart';

class Training extends StatelessWidget {
  const Training(
      {Key? key,
      required this.widget,
      required this.name,
      required this.imagePath,
      required this.category})
      : super(key: key);

  final String name, imagePath, category;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(0, 3),
                          blurRadius: 3,
                          spreadRadius: 3,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage(imagePath), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                flex: 26,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          category,
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                flex: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
