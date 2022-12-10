import 'package:flutter/material.dart';
import 'package:programming_languages/application/users.dart';
import 'package:programming_languages/application/welcome_page.dart';

class ExpertHomePage extends StatefulWidget {

  @override
  State<ExpertHomePage> createState() => _ExpertHomePageState();
}

class _ExpertHomePageState extends State<ExpertHomePage> {

  var walletController = TextEditingController();

  var name;
  var day;
  var time;

  List <Users> user = [
    Users(name: "joud", day: "saturday", time: "12"),
    Users(name: "ranis", day: "saturday", time: "12"),
    Users(name: "tala", day: "saturday", time: "12"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: Text(
          'Expert_home Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'My Home',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              Divider(
                color: Colors.black54,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Wallet',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 100.0,
                    child: TextField(
                      controller: walletController,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      ),
                    ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Appointments:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue[800],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 550.0,
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => buildUserItem(user[index]),
                        itemCount: user.length,
                        separatorBuilder: (context, index) => SizedBox(
                            height: 5.0,
                        ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.teal[100],
                ),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                    );
                  },
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
 Widget buildUserItem(Users user) => Padding(
   padding: const EdgeInsets.all(5.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.teal[100],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Text(
              '${user.day}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            '${user.time}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
 );