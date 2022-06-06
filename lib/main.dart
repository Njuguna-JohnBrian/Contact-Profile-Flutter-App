import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

//NEW CODE: Separate class to store themes
class MyAppThemes {
  //Method to provide light theme
  static ThemeData appThemeLight() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.light,

      //Theme for app bar
      appBarTheme: AppBarTheme(
        //AppBar's color
        color: Colors.white,
        //Theme for AppBar's icons
        iconTheme: IconThemeData(
          //Dark color icons on light colored background
          color: Colors.black,
        ),
      ),

      //Theme for app's icons
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),
    );
  }
}

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Applying theme to app calling MyAppThemes's method
      theme: MyAppThemes.appThemeLight(),

      home: Scaffold(
        //Creating app bar
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.star_border),
              onPressed: () {
                print("Contact is starred");
              },
            ),
          ],
        ),

        //Creating body part of the app
        body: buildBodyWidget(),
      ),
    );
  }

  //Provides body for the app
  Widget buildBodyWidget() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                "https://lh3.googleusercontent.com/a-/AOh14GgcjDsjmMN-22fvv-PD_zUwDQqO6GJY-8uB2U2K=s360-p-rw-no",
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "John Brian",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: profileActionItems(),
            ),
            Divider(
              color: Colors.grey,
            ),
            mobilePhoneListTile(),
            otherPhoneListTile(),
            Divider(
              color: Colors.grey,
            ),
            emailListTile(),
            Divider(
              color: Colors.grey,
            ),
            addressListTile(),
          ],
        ),
      ],
    );
  }

  //Builds custom action items widget
  Widget profileActionItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildCallButton(),
        buildTextButton(),
        buildVideoCallButton(),
        buildEmailButton(),
        buildDirectionsButton(),
        buildPayButton(),
      ],
    );
  }

  //Call button of action item widget
  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
          ),
          onPressed: () {},
        ),
        Text("Call"),
      ],
    );
  }

  //Text button of action item widget
  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
          ),
          onPressed: () {},
        ),
        Text("Text"),
      ],
    );
  }

  //Video button of action item widget
  Widget buildVideoCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.video_call,
          ),
          onPressed: () {},
        ),
        Text("Video"),
      ],
    );
  }

  //Email button of action item widget
  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.email,
          ),
          onPressed: () {},
        ),
        Text("Email"),
      ],
    );
  }

  //Directions button of action item widget
  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.directions,
          ),
          onPressed: () {},
        ),
        Text("Directions"),
      ],
    );
  }

  //Pay button of action item widget
  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.attach_money,
          ),
          onPressed: () {},
        ),
        Text("Pay"),
      ],
    );
  }

  //Builds widget for mobile phone number
  Widget mobilePhoneListTile() {
    return ListTile(
      leading: Icon(
        Icons.call,
        color: Colors.grey,
      ),
      title: Text("330-803-3390"),
      subtitle: Text("mobile"),
      trailing: IconButton(
        icon: Icon(
          Icons.message,
        ),
        onPressed: () {},
      ),
    );
  }

  //Builds widget for other phone number
  Widget otherPhoneListTile() {
    return ListTile(
      leading: Icon(Icons.add_call),
      title: Text("440-440-3390"),
      subtitle: Text("other"),
      trailing: IconButton(
        icon: Icon(
          Icons.message,
        ),
        onPressed: () {},
      ),
    );
  }

  //Builds email address widget
  Widget emailListTile() {
    return ListTile(
      leading: Icon(
        Icons.email,
        color: Colors.grey,
      ),
      title: Text("njugunajohnbrian@gmail.com"),
      subtitle: Text("work"),
    );
  }

  //Builds home address widget
  Widget addressListTile() {
    return ListTile(
      leading: Icon(
        Icons.location_on,
        color: Colors.grey,
      ),
      title: Text("234, Ring Road, Nyeri"),
      subtitle: Text("home"),
      trailing: IconButton(
        icon: Icon(
          Icons.directions,
        ),
        onPressed: () {},
      ),
    );
  }
}
