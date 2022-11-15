import 'package:campus_ola/decorations/home_screen_style.dart';
import 'package:campus_ola/models/post_model.dart';
import 'package:campus_ola/screens/post_search_page.dart';
import 'package:campus_ola/widgets/home/post_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Campus Ola",
          style: kAppBarTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PostSearchPage(category: "search")),
                );
              },
              child: Image.asset(
                "assets/search.png",
                width: 15.00,
                height: 15.00,
              ),
            ),
          )
        ],
        backgroundColor: const Color.fromRGBO(39, 49, 65, 0.64),
      ),
      backgroundColor: const Color(0xFF1B1B1D),
      body: ListView(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(top: 18.0, left: 15.0, bottom: 10.0),
            child: Text(
              "My Post",
              style: kTodayTextStyle,
            ),
          ),
          PostWidget(
            post: Post(
              note: 'Lorem ipsum dolor sit amet, consect'
                  'etur adipiscing elit, sed do eiusmod tempor'
                  'incididunt ut labore et dolore magna aliqua.'
                  'Ut enim ad minim veniam, quis nostrud.',
              name: "Oct 21st, 2022",
              email: "sanika19@iitg.ac.in",
              margin: Post.oneHour,
              mode: Post.airway,
              time: "10.30 am",
            ),
            context: context, color_category: 'mypost',
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, left: 15.0, bottom: 10.0),
                child: Text(
                  "Today | ",
                  style: kTodayTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Oct 21st, 2022",
                  style: kDateTextStyle,
                ),
              ),
            ],
          ),
          PostWidget(
            post: Post(
              note: 'Lorem ipsum dolor sit amet, consect'
                  'etur adipiscing elit, sed do eiusmod tempor'
                  'incididunt ut labore et dolore magna aliqua.'
                  'Ut enim ad minim veniam, quis nostrud.',
              name: "Sanika S. Kamble",
              email: "sanika19@iitg.ac.in",
              margin: Post.oneHour,
              mode: Post.airway,
              time: "10.30 am",
            ),
            context: context, color_category: 'post',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.0, left: 15.0, bottom: 10.0),
            child: Text(
              "Oct 22nd, 2022",
              style: kDateTextStyle,
            ),
          ),
          PostWidget(
            post: Post(
                name: "Sanika S. Kamble",
                email: "sanika19@iitg.ac.in",
                margin: Post.oneHour,
                note: 'Lorem ipsum dolor sit amet, consect'
                    'etur adipiscing elit, sed do eiusmod tempor'
                    'incididunt ut labore et dolore magna aliqua.'
                    'Ut enim ad minim veniam, quis nostrud.',
                mode: Post.airway,
                time: "10.30 am"),
            context: context, color_category: 'post',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PostSearchPage(category: "post")),
          );
        },
        label: const Text(
          "+",
          style: TextStyle(
              color: Colors.black, fontSize: 40, fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xFF76ACFF),
      ),
    );
  }
}
