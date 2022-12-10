import 'dart:core';
import 'package:flutter/material.dart';

class ExpertDetailsPage extends StatefulWidget {

  @override
  State<ExpertDetailsPage> createState() => _ExpertDetailsPageState();
}

class _ExpertDetailsPageState extends State<ExpertDetailsPage> {

  var pictureController = TextEditingController();
  var fromHoursController = TextEditingController();
  var fromMinutesController = TextEditingController();
  var fromSecondsController = TextEditingController();
  var toHoursController = TextEditingController();
  var toMinutesController = TextEditingController();
  var toSecondsController = TextEditingController();
  var costController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool? isChecked1 = false;
  bool? isChecked2 = false;
  bool? isChecked3 = false;
  bool? isChecked4 = false;
  bool? isChecked5 = false;
  bool? isChecked6 = false;
  bool? isChecked7 = false;

  bool? checked1 = false;
  bool? checked2 = false;
  bool? checked3 = false;
  bool? checked4 = false;
  bool? checked5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: Text(
          'Expert Details',
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
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      child: Text(
                        'Picture',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: pictureController,
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (var path)
                        {
                          print(path);
                        },
                        onChanged: (var path)
                        {
                          print(path);
                        },
                        validator: (path)
                        {
                          if(path!.isEmpty)
                          {
                            return 'picture must not be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'picture path',
                          labelStyle: TextStyle(
                            color: Colors.blue[800],
                          ),
                          prefixIcon: Icon(
                            Icons.picture_in_picture_alt_sharp,
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
                SizedBox(
                  height: 5.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Days:',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[800],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            'Saturday',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Checkbox(
                            tristate: true,
                            checkColor: Colors.white,
                            activeColor: Colors.teal[100],
                            value: isChecked1,
                            onChanged: (val)
                            {
                              setState(() {
                                isChecked1 = val;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Sunday',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(
                            width: 39.0,
                          ),
                          Checkbox(
                            tristate: true,
                            checkColor: Colors.white,
                            activeColor: Colors.teal[100],
                            value: isChecked2,
                            onChanged: (val)
                            {
                              setState(() {
                                isChecked2 = val;
                              });
                            },
                          ),
                          Text(
                            'Monday',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blue[800],
                            ),
                          ),
                          Checkbox(
                            tristate: true,
                            checkColor: Colors.white,
                            activeColor: Colors.teal[100],
                            value: isChecked3,
                            onChanged: (val)
                            {
                              setState(() {
                                isChecked3 = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Tuesday',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue[800],
                          ),
                        ),
                        SizedBox(
                          width: 13.0,
                        ),
                        Checkbox(
                          tristate: true,
                          checkColor: Colors.white,
                          activeColor: Colors.teal[100],
                          value: isChecked4,
                          onChanged: (val)
                          {
                            setState(() {
                              isChecked4 = val;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'wednesday',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue[800],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Checkbox(
                          tristate: true,
                          checkColor: Colors.white,
                          activeColor: Colors.teal[100],
                          value: isChecked5,
                          onChanged: (val)
                          {
                            setState(() {
                              isChecked5 = val;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Thursday',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue[800],
                          ),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Checkbox(
                          tristate: true,
                          checkColor: Colors.white,
                          activeColor: Colors.teal[100],
                          value: isChecked6,
                          onChanged: (val)
                          {
                            setState(() {
                              isChecked6 = val;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Friday',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue[800],
                          ),
                        ),
                        SizedBox(
                          width: 48.0,
                        ),
                        Checkbox(
                          tristate: true,
                          checkColor: Colors.white,
                          activeColor: Colors.teal[100],
                          value: isChecked7,
                          onChanged: (val)
                          {
                            setState(() {
                              isChecked7 = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black45,
                  height: 5.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Type of consulting:',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[800],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            'Medical',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Checkbox(
                            tristate: true,
                            checkColor: Colors.white,
                            activeColor: Colors.teal[100],
                            value: checked1,
                            onChanged: (val)
                            {
                              setState(() {
                                checked1 = val;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Vocational',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Checkbox(
                            tristate: true,
                            checkColor: Colors.white,
                            activeColor: Colors.teal[100],
                            value: checked2,
                            onChanged: (val)
                            {
                              setState(() {
                                checked2 = val;
                              });
                            },
                          ),
                          Text(
                            'Psychological',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blue[800],
                            ),
                          ),
                          Checkbox(
                            tristate: true,
                            checkColor: Colors.white,
                            activeColor: Colors.teal[100],
                            value: checked3,
                            onChanged: (val)
                            {
                              setState(() {
                                checked3 = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Familial',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue[800],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Checkbox(
                          tristate: true,
                          checkColor: Colors.white,
                          activeColor: Colors.teal[100],
                          value: checked4,
                          onChanged: (val)
                          {
                            setState(() {
                              checked4 = val;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Administrative/business',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blue[800],
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Checkbox(
                          tristate: true,
                          checkColor: Colors.white,
                          activeColor: Colors.teal[100],
                          value: checked5,
                          onChanged: (val)
                          {
                            setState(() {
                              checked5 = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black45,
                  height: 5.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Time:',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[800],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.blue[800],
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 110.0,
                                  child: TextFormField(
                                    controller: fromHoursController,
                                    keyboardType: TextInputType.datetime,
                                    onFieldSubmitted: (var hour)
                                    {
                                      print(hour);
                                    },
                                    onChanged: (var hour)
                                    {
                                      print(hour);
                                    },
                                    validator: (hour)
                                    {
                                      if(hour!.isEmpty)
                                      {
                                        return 'hour must not be empty';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'hour',
                                      labelStyle: TextStyle(
                                        color: Colors.blue[800],
                                      ),
                                      prefixIcon: Icon(
                                        Icons.timer,
                                        color: Colors.blue[800],
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                  width: 110.0,
                                  child: TextFormField(
                                    controller: fromMinutesController,
                                    keyboardType: TextInputType.datetime,
                                    onFieldSubmitted: (var minutes)
                                    {
                                      print(minutes);
                                    },
                                    onChanged: (var minutes)
                                    {
                                      print(minutes);
                                    },
                                    validator: (minutes)
                                    {
                                      if(minutes!.isEmpty)
                                      {
                                        return 'minutes must not be empty';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'min',
                                      labelStyle: TextStyle(
                                        color: Colors.blue[800],
                                      ),
                                      prefixIcon: Icon(
                                        Icons.timer,
                                        color: Colors.blue[800],
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                  width: 110.0,
                                  child: TextFormField(
                                    controller: fromSecondsController,
                                    keyboardType: TextInputType.datetime,
                                    onFieldSubmitted: (var seconds)
                                    {
                                      print(seconds);
                                    },
                                    onChanged: (var seconds)
                                    {
                                      print(seconds);
                                    },
                                    validator: (seconds)
                                    {
                                      if(seconds!.isEmpty)
                                      {
                                        return 'seconds must not be empty';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'sec',
                                      labelStyle: TextStyle(
                                        color: Colors.blue[800],
                                      ),
                                      prefixIcon: Icon(
                                        Icons.timer,
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
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'To',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.blue[800],
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 110.0,
                                  child: TextFormField(
                                    controller: toHoursController,
                                    keyboardType: TextInputType.datetime,
                                    onFieldSubmitted: (var hour1)
                                    {
                                      print(hour1);
                                    },
                                    onChanged: (var hour1)
                                    {
                                      print(hour1);
                                    },
                                    validator: (hour1)
                                    {
                                      if(hour1!.isEmpty)
                                      {
                                        return 'hour must not be empty';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'hour',
                                      labelStyle: TextStyle(
                                        color: Colors.blue[800],
                                      ),
                                      prefixIcon: Icon(
                                        Icons.timer,
                                        color: Colors.blue[800],
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                  width: 110.0,
                                  child: TextFormField(
                                    controller: toMinutesController,
                                    keyboardType: TextInputType.datetime,
                                    onFieldSubmitted: (var minutes1)
                                    {
                                      print(minutes1);
                                    },
                                    onChanged: (var minutes1)
                                    {
                                      print(minutes1);
                                    },
                                    validator: (minutes1)
                                    {
                                      if(minutes1!.isEmpty)
                                      {
                                        return 'minutes must not be empty';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'min',
                                      labelStyle: TextStyle(
                                        color: Colors.blue[800],
                                      ),
                                      prefixIcon: Icon(
                                        Icons.timer,
                                        color: Colors.blue[800],
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Container(
                                  width: 110.0,
                                  child: TextFormField(
                                    controller: toSecondsController,
                                    keyboardType: TextInputType.datetime,
                                    onFieldSubmitted: (var seconds1)
                                    {
                                      print(seconds1);
                                    },
                                    onChanged: (var seconds1)
                                    {
                                      print(seconds1);
                                    },
                                    validator: (seconds1)
                                    {
                                      if(seconds1!.isEmpty)
                                      {
                                        return 'seconds must not be empty';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      labelText: 'sec',
                                      labelStyle: TextStyle(
                                        color: Colors.blue[800],
                                      ),
                                      prefixIcon: Icon(
                                        Icons.timer,
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
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black45,
                  height: 20.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      'Cost:',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[800],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 250.0,
                      child: TextFormField(
                        controller: costController,
                        keyboardType: TextInputType.number,
                        onFieldSubmitted: (var cost)
                        {
                          print(cost);
                        },
                        onChanged: (var cost)
                        {
                          print(cost);
                        },
                        validator: (var cost)
                        {
                          if(cost!.isEmpty)
                            return 'cost must not be empty';
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'cost',
                          labelStyle: TextStyle(
                            color: Colors.blue[800],
                          ),
                          prefixIcon: Icon(
                            Icons.money,
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
                        print(pictureController.text);
                        print(fromHoursController.text);
                        print(fromMinutesController.text);
                        print(fromSecondsController.text);
                        print(toHoursController.text);
                        print(toMinutesController.text);
                        print(toSecondsController.text);
                        print(costController.text);
                        print(isChecked1);
                        print(isChecked2);
                        print(isChecked3);
                        print(isChecked4);
                        print(isChecked5);
                        print(isChecked6);
                        print(isChecked7);
                        print(checked1);
                        print(checked2);
                        print(checked3);
                        print(checked4);
                        print(checked5);
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
    );
  }
}
