import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back, color: Colors.black),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.star_border),
                color: Colors.black,
                onPressed: () {
                  print("Contact is starred");
                },
              )
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Image.network(
                        "https://lh3.googleusercontent.com/a-/AOh14GgcjDsjmMN-22fvv-PD_zUwDQqO6GJY-8uB2U2K=s360-p-rw-no",
                        height: 250,
                        fit: BoxFit.cover),
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
                    thickness: 1,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        // "Call" action Item
                        buildCallButton(),
                        // "Text" action item
                        buildTextButton(),
                        // "Video" action item
                        buildVideoButton(),
                        // "Email" action item
                        buildEmailButton(),
                        // "Directions" action item
                        buildDirectionsButton(),
                        // "Payment" action item
                        buildPayButton()
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  mobilePhoneListTile(),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  otherPhoneListTile(),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  emailListTile(),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  homeAddressTile(),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ],
              )
            ],
          )),
    );
  }

  // Adding call action  items
  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.call),
          color: Colors.indigo.shade800,
          onPressed: () {},
        ),
        Text("Call"),
      ],
    );
  }

  // Adding Text action Item
  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.message),
          color: Colors.indigo.shade800,
        ),
        Text("Text")
      ],
    );
  }

  // Adding Video action Item
  Widget buildVideoButton() {
    return Column(children: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.video_call),
        color: Colors.indigo.shade800,
      ),
      Text("Video")
    ]);
  }

// Adding Email action Item
  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.email),
          color: Colors.indigo.shade800,
        ),
        Text("Email"),
      ],
    );
  }

// Adding Directions action Item
  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.directions),
          color: Colors.indigo.shade800,
        ),
        Text("Directions"),
      ],
    );
  }

// Adding Pay action Item
  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.attach_money),
          color: Colors.indigo.shade800,
        ),
        Text("Pay"),
      ],
    );
  }

  // Adding "Mobile Phone Number" Item
  Widget mobilePhoneListTile() {
    return ListTile(
      leading: Icon(Icons.call),
      title: Text("+254-707-683-279"),
      subtitle: Text("mobile"),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.message),
        color: Colors.indigo.shade800,
      ),
    );
  }

  // Adding "Other Phone Number" Item
  Widget otherPhoneListTile() {
    return ListTile(
      leading: Icon(Icons.add_call),
      title: Text("+254-707-253-237"),
      subtitle: Text("other"),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.message),
          color: Colors.indigo.shade800),
    );
  }

  // Adding "Email List Tile"
  Widget emailListTile() {
    return ListTile(
      leading: Icon(Icons.email),
      title: Text("njugunajohnbrian@gmail.com"),
      subtitle: Text("work"),
    );
  }

  // Adding "Home Address"
  Widget homeAddressTile() {
    return ListTile(
      leading:Icon(Icons.location_city),
      title: Text("234, Ring Road, Nyeri"),
      subtitle: Text("home"),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.directions),
          color: Colors.indigo.shade800),
    );

  }
}
