import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var walletController = TextEditingController();
  var addressController = TextEditingController();
  var phoneController = TextEditingController();

  var isObsecured;

  @override
  void initState(){
    super.initState();
    isObsecured = true;
  }

  var formKey = GlobalKey<FormState>();

  var selectedRadio;

  @override
  void initState1(){
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(var val)
  {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: Text(
          'Sign up Screen',
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (String username)
                    {
                      print(username);
                    },
                    onChanged: (String username)
                    {
                      print(username);
                    },
                    validator: (username)
                    {
                      if(username!.isEmpty)
                      {
                        return 'Username must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Colors.blue[800],
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue[800],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
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
                  SizedBox(
                    height: 10.0,
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize:30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: addressController,
                    keyboardType: TextInputType.streetAddress,
                    onFieldSubmitted: (String address)
                    {
                      print(address);
                    },
                    onChanged: (String address)
                    {
                      print(address);
                    },
                    validator: (address)
                    {
                      if(address!.isEmpty)
                      {
                        return 'Address must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Address',
                      labelStyle: TextStyle(
                        color: Colors.blue[800],
                      ),
                      prefixIcon: Icon(
                        Icons.location_city,
                        color: Colors.blue[800],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'phone number',
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    onFieldSubmitted: (String phone)
                    {
                      print(phone);
                    },
                    onChanged: (String phone)
                    {
                      print(phone);
                    },
                    validator: (phone)
                    {
                      if(phone!.isEmpty)
                      {
                        return 'phone number must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      labelStyle: TextStyle(
                        color: Colors.blue[800],
                      ),
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.blue[800],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Text(
                      'sign up as:',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: Colors.teal[100],
                          onChanged: (var val)
                          {
                            print("selected radio $val");
                            setSelectedRadio(val);
                          },
                      ),
                      Text(
                        'a user',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blue[800],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black45,
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: selectedRadio,
                        activeColor: Colors.teal[100],
                        onChanged: (var val)
                        {
                          print("selected radio $val");
                          setSelectedRadio(val);
                        },
                      ),
                      Text(
                        'an expert  ',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blue[800],
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Wallet',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 250.0,
                            child: TextFormField(
                              controller: walletController,
                              keyboardType: TextInputType.number,
                              onFieldSubmitted: (var wallet)
                              {
                                print(wallet);
                              },
                              onChanged: (var wallet)
                              {
                                print(wallet);
                              },
                              validator: (var wallet)
                              {
                                if(wallet!.isEmpty)
                                  return 'wallet must not be empty';
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: 'wallet',
                                labelStyle: TextStyle(
                                  color: Colors.blue[800],
                                ),
                                prefixIcon: Icon(
                                  Icons.wallet,
                                  color: Colors.blue[800],
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
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
                          print(nameController.text);
                          print(emailController.text);
                          print(passwordController.text);
                          print(addressController.text);
                          print(phoneController.text);
                          print(selectedRadio);
                          print(walletController.text);
                        }
                      },
                      child: Text(
                        'Sign up',
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
