import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fantasia_new/ui/custom_colors.dart';
import 'package:fantasia_new/views/auth/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:super_bottom_navigation_bar/super_bottom_navigation_bar.dart';

class Profile extends StatefulWidget {


  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const colorizeColors = [
    Colors.black,
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  static const colorizedTextStyle = TextStyle(
    fontSize: 35,
    fontFamily: 'Canterbury',
    fontWeight: FontWeight.w900,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 100),
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Header',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Edit Profile',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.wallet_giftcard),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Wallet',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Settings',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Logout',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text("FANTASIA",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: SuperBottomNavigationBar(
        currentIndex: 2,
        items: makeNavItems(),
        onSelected: (index) {
          if (kDebugMode) {
            print('tab $index');
          }
        },
      ),
      backgroundColor: kBackgroundColor,
      body: Column(
        children:  [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("WELCOME ALYCIA",
                textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: GridView.builder(
                itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    // crossAxisSpacing: 10
                  ),
                  itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [
                        Row(
                          children: [
                            Image(
                                image: AssetImage("images/gif1.gif"),
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ],),
                    ),
                  );
                  },
              ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   onPressed: () {},
      //   child: Image.asset('images/wand.png'),
      // ),
    );
  }

  List<SuperBottomNavigationBarItem> makeNavItems() {
    return [
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.home_outlined,
          selectedIcon: Icons.home_outlined,
          size: 30,
          backgroundShadowColor: Colors.red,
          borderBottomColor: Colors.red,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.red,
          selectedIconColor: Colors.red,
          unSelectedIconColor: Colors.red),
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.search_outlined,
          selectedIcon: Icons.search_outlined,
          size: 30,
          backgroundShadowColor: Colors.blue,
          borderBottomColor: Colors.blue,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.blue,
          selectedIconColor: Colors.blue,
          unSelectedIconColor: Colors.blue),
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.star_border_outlined,
          selectedIcon: Icons.star_border_outlined,
          size: 30,
          backgroundShadowColor: Colors.yellowAccent,
          borderBottomColor: Colors.yellowAccent,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.yellowAccent,
          selectedIconColor: Colors.yellowAccent,
          unSelectedIconColor: Colors.yellowAccent),
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.done_outline_rounded,
          selectedIcon: Icons.done_outline_rounded,
          size: 30,
          backgroundShadowColor: Colors.green,
          borderBottomColor: Colors.green,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.green,
          selectedIconColor: Colors.green,
          unSelectedIconColor: Colors.green),
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.person_outline,
          selectedIcon: Icons.person_outline,
          size: 30,
          backgroundShadowColor: Colors.purpleAccent,
          borderBottomColor: Colors.purpleAccent,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.purpleAccent,
          selectedIconColor: Colors.purpleAccent,
          unSelectedIconColor: Colors.purpleAccent),
    ];
  }
}
