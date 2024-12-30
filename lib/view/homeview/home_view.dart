import 'package:flutter/material.dart';
import 'package:task_one/view/homeview/section.dart';

import '../../widgets/colors.dart';
import 'categorychip.dart';
import 'movieItem.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Rafsan',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Let\'s watch today',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.PNG'),

            ),
          ),
        ],

      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: BorderSide(
                          color: Colors.white, // Set the border color to white
                          width: 1.0, // Optional: Adjust the border width as needed
                        ),
                      )

                  ),
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: CustomColors.primaryColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Image.asset('assets/iconbuttonicon.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See More',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryChip(label: 'All', isSelected: true),
                CategoryChip(label: 'Action'),
                CategoryChip(label: 'Anime'),
                CategoryChip(label: 'Sci-fi'),
                CategoryChip(label: 'Thriller'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Section(
            title: "Trending Movies",
            items: [
              MovieItem("UB's Secret", "assets/ubs.png"),
              MovieItem("Soul Mate", "assets/soulmate.png"),
              MovieItem("UB's Secret", "assets/ubs.png"),
              MovieItem("Soul Mate", "assets/soulmate.png"),
              MovieItem("UB's Secret", "assets/ubs.png"),
              MovieItem("Soul Mate", "assets/soulmate.png"),
              MovieItem("UB's Secret", "assets/ubs.png"),
              MovieItem("Soul Mate", "assets/soulmate.png"),
            ],
          ),
          SizedBox(height: 20),
          Section(
            title: "Continue Watching",
            items: [
              MovieItem(
                "Wednesday",
                "assets/wednedday.png",
                subtitle: "Season 1 | Episode 3",
                width: 150,  // Custom width
                progress: 0.5,  // 50% watched
              ),
              MovieItem(
                "Emily in Paris",
                "assets/emily.png",
                subtitle: "Season 1 | Episode 3",
                width: 150,
                progress: 0.8,  // 80% watched
              ),
              MovieItem(
                "Wednesday",
                "assets/wednedday.png",
                subtitle: "Season 1 | Episode 3",
                width: 150,
                progress: 0.4,  // 40% watched
              ),
              MovieItem(
                "Emily in Paris",
                "assets/emily.png",
                subtitle: "Season 1 | Episode 3",
                width: 150,
                progress: 0.9,  // 90% watched
              ),
            ],
          ),


          Section(
            title: "Recommended For You",
            items: [
              MovieItem("Double Love", "assets/doublelove.png"),
              MovieItem("Curse Of The River", "assets/curse.png"),
              MovieItem("Sunita", "assets/sunita.png"),
              MovieItem("Double Love", "assets/doublelove.png"),
              MovieItem("Curse Of The River", "assets/curse.png"),
              MovieItem("Sunita", "assets/sunita.png"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20), // Apply rounded corners
          child: Container(
            color: Color(0xFF1C212A), // Background color
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Image.asset('assets/home.png', width: 24, height: 24),
                  onPressed: () {
                    setState(() => _selectedIndex = 0);
                  },
                  color: _selectedIndex == 0
                      ? CustomColors.primaryColor
                      : Colors.grey, // Highlight selected
                ),
                IconButton(
                  icon: Image.asset('assets/pc.png', width: 24, height: 24),
                  onPressed: () {
                    setState(() => _selectedIndex = 1);
                  },
                  color: _selectedIndex == 1
                      ? CustomColors.primaryColor
                      : Colors.grey,
                ),
                IconButton(
                  icon: Image.asset('assets/download.png', width: 24, height: 24),
                  onPressed: () {
                    setState(() => _selectedIndex = 2);
                  },
                  color: _selectedIndex == 2
                      ? CustomColors.primaryColor
                      : Colors.grey,
                ),
                IconButton(
                  icon: Image.asset('assets/account.png', width: 24, height: 24),
                  onPressed: () {
                    setState(() => _selectedIndex = 3);
                  },
                  color: _selectedIndex == 3
                      ? CustomColors.primaryColor
                      : Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}