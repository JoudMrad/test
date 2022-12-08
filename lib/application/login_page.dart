import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var isObsecured;

  @override
  void initState(){
    super.initState();
    isObsecured = true;
  }

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: Text(
          'Login Screen',
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
        child: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String email)
                    {
                      print(email);
                    },
                    onChanged: (String email)
                    {
                      print(email);
                    },
                    validator: (email)
                    {
                      if(email!.isEmpty)
                        {
                          return 'Email Address must not be empty';
                        }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: TextStyle(
                        color: Colors.blue[800],
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.blue[800],
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize:30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isObsecured,
                    onFieldSubmitted: (String password)
                    {
                      print(password);
                    },
                    onChanged: (String password)
                    {
                      print(password);
                    },
                    validator: (password)
                    {
                      if(password!.isEmpty)
                      {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.blue[800],
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue[800],
                      ),
                      suffixIcon: IconButton(
                        color: Colors.blue[800],
                        icon: isObsecured ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            isObsecured =! isObsecured;
                          });
                        },
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.teal[100],
                    ),
                    child: MaterialButton(
                        onPressed: ()
                        {
                          if(formKey.currentState!.validate())
                            {
                              print(emailController.text);
                              print(passwordController.text);
                            }
                        },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
