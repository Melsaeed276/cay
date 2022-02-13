import 'package:cay_platform/model/trainings.dart';
import 'package:cay_platform/view/drawer/drawer.dart';
import 'package:cay_platform/view/home/widgets/custom_app_bar_home.dart';
import 'package:cay_platform/view/home/widgets/mentros.dart';
import 'package:cay_platform/view/home/widgets/training.dart';
import 'package:cay_platform/view/selected_training/selected_training.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List name = Provider.of<Trainings>(context).name;
    List image = Provider.of<Trainings>(context).imagePath;
    List category = Provider.of<Trainings>(context).category;
    List description = Provider.of<Trainings>(context).description;

    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFEDF7F8),
      body: ListView(
        children: [
          const CustomAppBarForHome(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Popular Trainign",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Training(
                  widget: SelectedTraining(
                    name: name[0],
                    imagePath:
                        image[0], //! We have to take all of them from database
                    category: category[0],
                    description: description[0],
                  ),
                  name: name[0],
                  imagePath: image[0],
                  category: category[0],
                ),
                Training(
                  widget: SelectedTraining(
                    name: name[1],
                    imagePath: image[1],
                    category: category[0],
                    description: description[1],
                  ),
                  name: name[1],
                  imagePath: image[1],
                  category: category[0],
                ),
                Training(
                  widget: SelectedTraining(
                    name: name[2],
                    imagePath: image[2],
                    category: category[0],
                    description: description[2],
                  ),
                  name: name[2],
                  imagePath: image[2],
                  category: category[0],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Mentors",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          //We can use gridview build in here
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
              Mentors(name: "Mentor 1", imagePath: "assets/user/avatar2.png"),
              Mentors(name: "Mentor 2", imagePath: "assets/user/avatar3.png"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [
              Mentors(name: "Mentor 3", imagePath: "assets/user/avatar4.png"),
              Mentors(name: "Mentor 4", imagePath: "assets/user/avatar5.png"),
            ],
          ),
        ],
      ),
    );
  }
}

