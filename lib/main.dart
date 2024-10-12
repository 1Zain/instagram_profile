import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('izi1_', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: Icon(Icons.add_box, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: 
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildStatColumn('1', 'post'),
                          _buildStatColumn('1M', 'followers'),
                          _buildStatColumn('617', 'following'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Zain',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text('U.O.N\nNetwork ENG', style: TextStyle(color: Colors.white)),
                Text('ستغرق ثم تنقذ نفسك بفكرك', style: TextStyle(color: Colors.white)),
                SizedBox(height: 8),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[800], 
                          padding: EdgeInsets.symmetric(vertical: 10),
                        ),
                        child: Text('Edit profile', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 10), 
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[800], 
                          padding: EdgeInsets.symmetric(vertical: 10),
                        ),
                        child: Text('Share profile', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildHighlightCircle('A3mal', 'images/A3mal.png'),
                    _buildHighlightCircle('4th', 'images/4th.JPG'),
                    _buildHighlightCircle('3rd', 'images/3rd.JPG'),
                    _buildHighlightCircle('Me', 'images/me.png'),
                  ],
                ),
                SizedBox(height: 16),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/post.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Colors.black,
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.video_library), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatColumn(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildHighlightCircle(String label, String assetPath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(assetPath),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
