import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _image;
  final picker = ImagePicker();
  TextEditingController _nameController = TextEditingController();
  
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }
  
  
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  getImage();
                },
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                          decoration: InputDecoration(
                              
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0XFFE8ECF4)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0XFFE8ECF4)),
                              ),
                              fillColor: Color(0xFFF7F8F9),
                              filled: true,
                              labelText: 'username'),
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                        ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Save changes to the user's profile
                  String name = _nameController.text;
                  // Update the profile picture and name in the database or wherever you store user data
                  
                  // Show a success message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Profile updated successfully'),
                    ),
                  );
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}