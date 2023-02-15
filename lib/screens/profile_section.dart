// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Profile Challenge 01',
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Center(
//             child: const Text('Profile Challenge 01'),
//           ),
//         ),
//         body: ListView(
//           children: <Widget>[
//             Container(
//               height: 250,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.red, Colors.deepOrange.shade300],
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   stops: [0.5, 0.9],
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: <Widget>[
//                       CircleAvatar(
//                         backgroundColor: Colors.red.shade300,
//                         minRadius: 35.0,
//                         child: Icon(
//                           Icons.call,
//                           size: 30.0,
//                         ),
//                       ),
//                       CircleAvatar(
//                         backgroundColor: Colors.white70,
//                         minRadius: 60.0,
//                         child: CircleAvatar(
//                           radius: 50.0,
//                           backgroundImage: NetworkImage(
//                               'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
//                         ),
//                       ),
//                       CircleAvatar(
//                         backgroundColor: Colors.red.shade300,
//                         minRadius: 35.0,
//                         child: Icon(
//                           Icons.message,
//                           size: 30.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Leonardo Palmeiro',
//                     style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Text(
//                     'Flutter Developer',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: Container(
//                       color: Colors.deepOrange.shade300,
//                       child: ListTile(
//                         title: Text(
//                           '5000',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 30,
//                             color: Colors.white,
//                           ),
//                         ),
//                         subtitle: Text(
//                           'Followers',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white70,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       color: Colors.red,
//                       child: ListTile(
//                         title: Text(
//                           '5000',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 30,
//                             color: Colors.white,
//                           ),
//                         ),
//                         subtitle: Text(
//                           'Following',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.white70,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               child: Column(
//                 children: <Widget>[
//                   ListTile(
//                     title: Text(
//                       'Email',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: Text(
//                       'palmeiro.leonardo@gmail.com',
//                       style: TextStyle(
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                   Divider(),
//                   ListTile(
//                     title: Text(
//                       'GitHub',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: Text(
//                       'https://github.com/leopalmeiro',
//                       style: TextStyle(
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                   Divider(),
//                   ListTile(
//                     title: Text(
//                       'Linkedin',
//                       style: TextStyle(
//                         color: Colors.deepOrange,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: Text(
//                       'www.linkedin.com/in/leonardo-palmeiro-834a1755',
//                       style: TextStyle(
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("Profile section")),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: Icon(Icons.person),
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: Icon(Icons.notification_add),
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: Icon(Icons.settings),
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: Icon(Icons.help),
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: Icon(Icons.logout),
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  Icon icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            icon,
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  var image = ImagePicker();
  var images;

  ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Theme.of(context).primaryColor,
              child: Image.asset('assets/images/result.png'),
            ),
          ),
          Positioned(
              right: -16,
              bottom: 0,
              child: SizedBox(
                height: 46,
                width: 46,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.white),
                    ),
                    backgroundColor: Color(0xFFF5F6F9),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Pick the source of the image"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () async {
                              print("gallery");
                              images = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: const Text("Insert from gallery"),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              images = await ImagePicker()
                                  .pickImage(source: ImageSource.camera);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: const Text("Insert from camera"),
                            ),
                          ),
                        ],
                      ),
                    );
                    // show dialog screen in flutter?
                  },
                ),
              ))
        ],
      ),
    );
  }
}
