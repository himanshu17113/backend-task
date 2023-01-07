import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task/screens/take_test_screen.dart';
import 'package:task/services/user_service.dart';

import '../config/colors.dart';
import '../widget/costumized_button.dart';
import 'home_page_screen.dart';

class ProfileSetUp extends StatefulWidget {
  final TextEditingController name;
 // final TextEditingController valid;
  final TextEditingController password;
  final TextEditingController email;

  // const ProfileSetUp({Key? key}) : super(key: key);

  const ProfileSetUp(
      {Key? key,
      required this.name,
    //  required this.valid,
      required this.password,
      required this.email})
      : super(key: key);

  @override
  State<ProfileSetUp> createState() =>
      _ProfileSetUpState(name,
   //    valid,
        password, email);
}

class _ProfileSetUpState extends State<ProfileSetUp> {
  final TextEditingController name;
 // final TextEditingController valid;
  final TextEditingController password;
  final TextEditingController email;

  _ProfileSetUpState(this.name,
   //this.valid, 
   this.password, this.email);

  final TextEditingController _occupationController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();
  final TextEditingController _writerController = TextEditingController();
  final TextEditingController _explainController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _skillsController = TextEditingController();
  final TextEditingController _portfolioController = TextEditingController();
  final TextEditingController _fedbackController = TextEditingController();
  final TextEditingController _costController = TextEditingController();
  String _enteredText = '';
  UserService userService = UserService();

  void signupUser() {
    userService.signUpUser(
      context: context,
      email: email.text,
      password: password.text,
      name: name.text,
    //  valid: valid.text ?? "true",
      cost: _costController.text,
      experience: _experienceController.text,
      explain: _explainController.text,
      id: '',
      skills: _skillsController.text,
      occupation: _occupationController.text,
      feedback: _fedbackController.text,
      writer: _writerController.text,
      location: _locationController.text,
      portfolio: _portfolioController.text,
    );
  }

  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  void _pickImage() async {
    try {
      final pickedFile = await _picker.getImage(source: ImageSource.gallery);
      setState(() {
        _imageFile = pickedFile;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          var totalHeight = constraints.maxHeight;
          var totalWidth = constraints.maxWidth;
          return Container(
            height: totalHeight,
            width: totalWidth,
            color: const Color.fromRGBO(0, 0, 0, 1),
            child: Stack(
              children: [
                Positioned(
                  left: totalWidth * 0.087,
                  top: totalHeight * 0.0533,
                  child: Text(
                    'Setup profile',
                    style: textStyle1,
                  ),
                ),
                Positioned(
                  left: totalWidth * 0.087,
                  top: totalHeight * 0.129,
                  child: Text(
                    'Just a small info to verify your, Please fill all the\n required fields. ',
                    style: textStyle8,
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.197,
                  left: totalWidth * 0.056,
                  child: Row(
                    children: [
                      buildPositioned(
                          height: totalHeight * 0.04,
                          width: totalWidth * 0.52,
                          controller: _occupationController,
                          hintText: 'Enter your occuption',
                          hintStyle: textStyle9),
                      SizedBox(
                        width: totalWidth * 0.017,
                      ),
                      buildPositioned(
                        height: totalHeight * 0.04,
                        width: totalWidth * 0.33,
                        controller: _experienceController,
                        hintText: 'Experiance',
                        hintStyle: textStyle9,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.257,
                  left: totalWidth * 0.056,
                  child: buildPositioned(
                      height: totalHeight * 0.04,
                      width: totalWidth * 0.88,
                      controller: _locationController,
                      hintText: 'Enter your location',
                      hintStyle: textStyle9),
                ),
                Positioned(
                  top: totalHeight * 0.31,
                  left: totalWidth * 0.056,
                  child: buildPositioned(
                    height: totalHeight * 0.04,
                    width: totalWidth * 0.88,
                    controller: _writerController,
                    hintText: 'Type of writer',
                    hintStyle: textStyle9,
                    suffix: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.37,
                  left: totalWidth * 0.056,
                  child: Container(
                    margin: const EdgeInsets.only(),
                    width: totalWidth * 0.88,
                    height: totalHeight * 0.11,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(221, 221, 221, 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(8.62516)),
                    ),
                    child: TextField(
                      maxLines: 6,
                      onChanged: (value) {
                        setState(() {
                          _enteredText = value;
                        });
                      },
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      controller: _explainController,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Please explain ( if you selected other )',
                        hintStyle: textStyle9,
                        counter: Container(
                          margin: const EdgeInsets.only(
                            right: 19,
                            bottom: 10,
                          ),
                          child: Text(
                            '${_enteredText.length.toString()} /30',
                            style: textStyle10,
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(221, 221, 221, 0.1),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(8.62516)),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.5,
                  left: totalWidth * 0.056,
                  child: buildPositioned(
                      height: totalHeight * 0.04,
                      width: totalWidth * 0.88,
                      controller: _skillsController,
                      hintText: 'Add your skills',
                      hintStyle: textStyle9),
                ),
                Positioned(
                  top: totalHeight * 0.55,
                  left: totalWidth * 0.12,
                  child: Container(
                    margin: const EdgeInsets.only(),
                    child: Text(
                      'use space or comma to add more skills',
                      style: textStyle11,
                    ),
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.579,
                  left: totalWidth * 0.056,
                  child: buildPositioned(
                    height: totalHeight * 0.04,
                    width: totalWidth * 0.88,
                    controller: _portfolioController,
                    hintText: 'Portfolio link',
                    hintStyle: textStyle9,
                    suffix: const Icon(
                      Icons.link,
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.63,
                  left: totalWidth * 0.056,
                  child: buildPositioned(
                    height: totalHeight * 0.04,
                    width: totalWidth * 0.88,
                    controller: _fedbackController,
                    hintText: 'Share Feedback ( optional )',
                    hintStyle: textStyle9,
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.69,
                  left: totalWidth * 0.12,
                  child: Container(
                    margin: const EdgeInsets.only(),
                    child: Text(
                      'use space or comma to add more feedback',
                      style: textStyle11,
                    ),
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.72,
                  left: totalWidth * 0.056,
                  child: buildPositioned(
                    height: totalHeight * 0.04,
                    width: totalWidth * 0.88,
                    controller: _costController,
                    hintText: 'Set per word cost',
                    hintStyle: textStyle9,
                    suffix: const Icon(
                      Icons.attach_money_outlined,
                      color: Color.fromRGBO(102, 102, 102, 1),
                    ),
                  ),
                ),
                Positioned(
                  left: totalWidth * 0.056,
                  top: totalHeight * 0.78,
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      width: 345.01,
                      height: totalHeight * 0.08,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(221, 221, 221, 0.2),
                        borderRadius:
                            BorderRadius.all(Radius.circular(8.62516)),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              child: Icon(
                                Icons.cloud_upload_outlined,
                                color: Color.fromRGBO(102, 102, 102, 1),
                              ),
                            ),
                            SizedBox(
                              width: totalWidth * 0.02,
                            ),
                            Text(
                              'Upload Sample',
                              style: textStyle5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.869,
                  left: totalWidth * 0.305,
                  child: Text(
                    'Upload size must be less than 10MB',
                    style: textStyle11,
                  ),
                ),
                Positioned(
                  top: totalHeight * 0.90,
                  left: totalWidth * 0.056,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: GestureDetector(
               onTap: signupUser,
          //           onTap:   ()  { Navigator.of(context).pushReplacement(
          //   MaterialPageRoute(
          //     builder: (context) => const testScreen(),
          //   ),
          // );},
                      child: CustomizedButton(
                        context: context,
                        width: totalWidth * 0.8866,
                        radius: 8.62516,
                        text: 'Verify & Continue',
                        textStyle: textStyle3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Container buildPositioned({
    required height,
    required width,
    required controller,
    required hintText,
    required hintStyle,
    suffix,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(221, 221, 221, 0.1),
        borderRadius: BorderRadius.all(Radius.circular(8.62516)),
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: false,
        controller: controller,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          suffixIcon: suffix ?? null,
          hintText: hintText,
          hintStyle: hintStyle,
          filled: true,
          fillColor: const Color.fromRGBO(221, 221, 221, 0.1),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.62516)),
          ),
        ),
      ),
    );
  }
}
