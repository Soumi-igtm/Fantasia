import 'package:fantasia_new/ui/custom_colors.dart';
import 'package:fantasia_new/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool onLastPage = false;

  @override
  void dispose(){
    controller.dispose();

    super.dispose();
  }

 Widget buildPage({
   required Color color,
   required String urlImage,
   required String title,
   required String subtitle,
 }) => Container(
   width: 100,
   height: 100,
   decoration: BoxDecoration(
     borderRadius: BorderRadius.vertical(
         top: Radius.elliptical(15, 22)
     ),
     color : color,
   ),

   child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Image.asset(urlImage,
           fit: BoxFit.cover,
           width: double.infinity,
         ),
          const SizedBox(height: 64),
          Text(
             title,
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.black,
               fontSize: 32,
               fontWeight: FontWeight.bold,
             ),
           ),

         const SizedBox(height: 24),
         Container(
           padding: const EdgeInsets.symmetric(horizontal: 80),
           child: Text(
             subtitle,
             style: TextStyle(color: Colors.pinkAccent),
           ),
         ),
       ],


   ),
 );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState((){
                    onLastPage = (index==2);
                  });
                },
                children: [
                       buildPage(
                          title: 'WIZARDY',
                          subtitle: 'Witchy',
                          urlImage: 'images/candle.png',
                          color: kBackgroundColor
                      ),


                  buildPage(color: kPrimaryColor,
                      title: 'MAGICAL',
                      urlImage: 'images/new1.png',
                      subtitle: 'Witchy'

                  ),
                  buildPage(title: 'WITCHCRAFT',
                      color: kSecondaryColor,
                      urlImage: 'images/new2.png',
                      subtitle: 'Witchy'

                  ),

                ],
        ),
            ),

        Container(
          alignment: Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  controller.jumpToPage(2);
                },
                  child: Text("SKIP")),


              SmoothPageIndicator(controller: controller, count: 3),

              onLastPage
              ? GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                  child: Text("DONE")
              )
             : GestureDetector(
                onTap: (){
                  controller.nextPage(duration:
                  const Duration(milliseconds: 1500),
                      curve:Curves.easeIn
                  );
                },
                  child: Text("NEXT")
              ),
            ],
          ),
        ),
          ],
    )
    );
  }
}
