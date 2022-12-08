import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
        backgroundColor: Colors.white60,
        title: Text(
          'Login Screen',
          style: TextStyle(
            color: Colors.black,
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/pink.jpg"),
            fit: BoxFit.cover,
          ),
        ),
     child: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Form(
         key: formKey,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   'Email',
                   style: TextStyle(
                     fontSize: 40.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 TextFormField(
                   controller: emailController,
                   keyboardType: TextInputType.emailAddress,
                   onFieldSubmitted: (String email){
                     print(email);
                   },
                   onChanged: (String email){
                     print(email);
                   },
                   validator: (email){
                     if(email!.isEmpty)
                       return 'email address must not be empty';
                     return null;
                   },
                   decoration: InputDecoration(
                     hintText: 'Enter your Email',
                     labelText: 'Email Address',
                     prefixIcon: Icon(
                       Icons.email,
                     ),
                     border: OutlineInputBorder(),
                   ),
                 ),
               ],
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 20.0,
                 ),
                 Text(
                   'Password',
                   style: TextStyle(
                     fontSize: 40.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 TextFormField(
                   controller: passwordController,
                   keyboardType: TextInputType.visiblePassword,
                   obscureText: isObsecured,
                   onFieldSubmitted: (String password){
                     print(password);
                   },
                   onChanged: (String password){
                     print(password);
                   },
                  validator: (password) {
                    if (password!.isEmpty)
                      return 'password must not be empty';
                    return null;
                  },
                   decoration: InputDecoration(
                     hintText: 'Enter your Password',
                     labelText: 'Password',
                     prefixIcon: Icon(
                       Icons.lock,
                     ),
                     suffixIcon: IconButton(
                       icon: isObsecured ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                       onPressed: (){
                         setState(() {
                           isObsecured =! isObsecured;
                         });
                       },
                     ),
                     border: OutlineInputBorder(),
                   ),
                 ),
               ],
             ),
             SizedBox(
               height: 30.0,
             ),
             Container(
               width: double.infinity,
               color: Colors.white60,
               child: MaterialButton(
                   onPressed: (){
                    if(formKey.currentState!.validate()){
                      print(emailController.text);
                      print(passwordController.text);
                    }
                   },
                 child: Text(
                   'Login',
                   style: TextStyle(
                     fontSize: 20.0,
                   ),
                 ),
               ),
             ),
           ],
         ),
       ),
     ),
      ),
      );
  }
}