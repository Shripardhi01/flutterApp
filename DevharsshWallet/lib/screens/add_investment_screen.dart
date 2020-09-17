import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/app_drawer.dart';

class AddInvestmentScreen extends StatefulWidget {
  static const routeName = '/addInvestment';
  @override
  _AddInvestmentScreenState createState() => _AddInvestmentScreenState();
}

class _AddInvestmentScreenState extends State<AddInvestmentScreen> {
  File _image;
  final picker = ImagePicker();

  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Choose One?",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Gallery",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                      onTap: () {
                        _openGallery(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Container(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text("Camera",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          )),
                      onTap: () {
                        _openCamera(context);
                      },
                    )
                  ],
                ),
              ));
        });
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    this.setState(() {
      _image = File(pickedFile.path);
    });
    Navigator.of(context).pop();
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    this.setState(() {
      _image = File(pickedFile.path);
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Investment'),
      ),
      drawer: AppDrawer(),
      body: Container(
        padding:
            EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
        // height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Form(
                // key: _formKey,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Executive Detail'),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Excutive Code'),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Invalid Excecutive Code!';
                        }
                      },
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Investor Detail'),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Invalid Name!';
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'E-Mail'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty || !value.contains('@')) {
                          return 'Invalid email!';
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Mobile Number'),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value.isEmpty || value.length > 10) {
                          return 'Invalid mobile number!';
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      keyboardType: TextInputType.streetAddress,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Invalid address!';
                        }
                      },
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Investment Details'),
                      ),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Investment Amount'),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Invalid Amount!';
                        }
                      },
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Bank Details'),
                      ),
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Bank Account Number'),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Invalid account number!';
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Bank IFSC'),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty || value.length != 11) {
                          return 'Invalid IFSC!';
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Bank Name'),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Invalid Bank Name!';
                        }
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Bank Address'),
                      keyboardType: TextInputType.streetAddress,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Invalid Bank Address!';
                        }
                      },
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Upload Investment Reciept'),
                      ),
                    ),
                    FlatButton.icon(
                      icon: Icon(Icons.camera),
                      label: Text('Take Picture'),
                      textColor: Theme.of(context).primaryColor,
                      onPressed: () {
                        _showSelectionDialog(context);
                      },
                    ),
                    Container(
                      // height: 400,
                      // width: 400,
                      margin:
                          EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                      padding: EdgeInsets.all(5.0),
                      child: _image == null
                          ? Text('No Image Selected')
                          : Image.file(_image),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.only(left: 15, right: 15),
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).accentColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: null,
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
